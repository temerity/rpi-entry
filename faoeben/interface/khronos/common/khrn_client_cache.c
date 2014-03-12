/* ============================================================================
Copyright (c) 2008-2014, Broadcom Corporation
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
============================================================================ */

#include "interface/khronos/common/khrn_int_common.h"

#include "interface/khronos/common/khrn_client_cache.h"
#include "interface/khronos/common/khrn_client_platform.h"
#include "interface/khronos/common/khrn_client_rpc.h"

#include "interface/khronos/common/khrn_int_hash.h"
#include "interface/khronos/common/khrn_int_util.h"

#ifdef RPC_DIRECT
#include "interface/khronos/glxx/glxx_int_impl.h"
#endif

#include <assert.h>

#ifdef SIMPENROSE
#include "v3d/verification/tools/2760sim/simpenrose.h"
#endif
/* updated below 1) to compile and 2) for CLIENT_MAKE_CURRENT_SIZE */
#include "utils/Log.h"
#define CLIENT_MAKE_CURRENT_SIZE 36

static uint32_t hash(const void *data, int len, int sig)
{
   int hash;

//   if (len > 256)     // TODO: turn this on later
//      len = 256;

   if (!((size_t)data & 3) && !(len & 3))
      hash = khrn_hashword((uint32_t *)data, len >> 2, 0);
   else
      hash = khrn_hashlittle(data, len, 0);

   return (hash & ~0xf) | sig;
}

/*new*/
////////int new_khrn_cache_init(KHRN_CACHE_T *cache)
////////{
////////   return khrn_pointer_map_init(&cache->map, 64);
////////}
/*old*/
int khrn_cache_init(KHRN_CACHE_T *cache)
{
   cache->tree = NULL;
   cache->data = NULL;

   cache->client_depth = 0;
   cache->server_depth = 0;

   cache->start.prev = NULL;
   cache->start.next = &cache->end;
   cache->end.prev = &cache->start;
   cache->end.next = NULL;

   return khrn_pointer_map_init(&cache->map, 64);
}
/*new*/
////////void khrn_cache_term(KHRN_CACHE_T *cache)
////////{
////////   khrn_map_term(&cache->map);
////////}
/*old*/
void khrn_cache_term(KHRN_CACHE_T *cache)
{
   khrn_platform_free(cache->tree);
   khrn_platform_free(cache->data);

   khrn_pointer_map_term(&cache->map);
}


#ifdef SIMPENROSE_RECORD_OUTPUT
static bool xxx_first = true;
#endif
/*new:*/
////////int khrn_cache_lookup(KHRN_CACHE_T *cache, const void *data, int len, int sig, bool is_opengles_11)
////////{

////////	int key = (int)data;
////////	int loop_counter = 0;
////////	MEM_HANDLE_T handle = (MEM_HANDLE_T)khrn_map_lookup(&cache->map, key);

////////	if((handle == MEM_HANDLE_INVALID) || (handle == (MEM_HANDLE_T)(-1)))
////////		{
////////		handle = mem_alloc_ex(len,16,(MEM_FLAG_T)(MEM_FLAG_DIRECT | MEM_FLAG_NO_INIT | MEM_FLAG_RESIZEABLE),"vertex attributes",MEM_COMPACT_NONE);
////////		if(handle != MEM_HANDLE_INVALID)
////////			{
////////			void* handle_mem = mem_lock(handle);
////////			platform_memcpy(handle_mem,data,len);
////////			mem_unlock(handle);
////////			khrn_map_insert(&cache->map, key, handle);
////////			mem_release(handle);
////////			}
////////      }
////////	else
////////		{
////////		void* handle_mem = mem_lock(handle);
////////		int handle_len = mem_get_size(handle);

////////		if (handle && handle_len >= len && !memcmp(handle_mem, data, len)) {
////////			mem_unlock(handle);
////////			return handle;
////////			}
////////		else if(handle && handle_len < len && !memcmp(handle_mem, data, handle_len)) {
////////			mem_unlock(handle);
////////			int retval = mem_resize_ex(handle,len,MEM_COMPACT_NONE);
////////			if(retval != 0)
////////				{
////////				handle_mem = mem_lock(handle);
////////				platform_memcpy(handle_mem,data,len);
////////				mem_unlock(handle);
////////				}
////////			}
////////		else
////////			{
////////			int key = hash(data, len, sig);
////////			handle = (MEM_HANDLE_T)khrn_map_lookup(&cache->map, key);
////////			if(!((handle == MEM_HANDLE_INVALID) || (handle == (MEM_HANDLE_T)(-1))))
////////				{
//////////				LOGE("hash key had a valid handle .. what to do?");
////////				}
////////			else
////////				{
////////				handle = mem_alloc_ex(len,16,(MEM_FLAG_T)(MEM_FLAG_DIRECT | MEM_FLAG_NO_INIT | MEM_FLAG_RESIZEABLE),"vertex attributes",MEM_COMPACT_NONE);
////////				if(handle != MEM_HANDLE_INVALID)
////////					{
////////					handle_mem = mem_lock(handle);
////////					platform_memcpy(handle_mem,data,len);
////////					mem_unlock(handle);
////////					khrn_map_insert(&cache->map, key, handle);
////////					mem_release(handle);
////////					}
////////				}
////////			}
////////		}
////////	return handle;
////////}
/*old*/
/*#include "interface/khronos/common/khrn_client.h"*/
#include "interface/khronos/egl/egl_client_context.h"
#include "interface/khronos/egl/egl_client_surface.h"
#include "interface/khronos/include/EGL/eglext.h"
#define MERGE_BUFFER_SIZE  4080
typedef struct {
   EGL_CONTEXT_T *context;
   EGL_SURFACE_T *draw;
   EGL_SURFACE_T *read;
} EGL_CURRENT_T;
typedef struct CLIENT_THREAD_STATE {
   /*
      error

      Invariant:
      (CLIENT_THREAD_STATE_ERROR)
      error is one of
         EGL_SUCCESS
         EGL_NOT_INITIALIZED
         EGL_BAD_ACCESS
         EGL_BAD_ALLOC
         EGL_BAD_ATTRIBUTE
         EGL_BAD_CONTEXT
         EGL_BAD_CONFIG
         EGL_BAD_CURRENT SURFACE
         EGL_BAD_DISPLAY
         EGL_BAD_SURFACE
         EGL_BAD_MATCH
         EGL_BAD_PARAMETER
         EGL_BAD_NATIVE PIXMAP
         EGL_BAD_NATIVE WINDOW
         EGL_CONTEXT_LOST
   */
   EGLint error;

   EGLenum bound_api;

   /*
      handles to current display, context and surfaces for each API

      Availability:

      Thread owns EGL lock
   */

   EGL_CURRENT_T opengl;
   EGL_CURRENT_T openvg;

   /*
      rpc stuff
   */

   bool high_priority;

   uint8_t merge_buffer[MERGE_BUFFER_SIZE];

   uint32_t merge_pos;
   uint32_t merge_end;
} CLIENT_THREAD_STATE_T;
static void heap_free(KHRN_CACHE_T *cache, int block)
{
   int node = block + (1 << (cache->client_depth - 1));
   int reset = 1;

   while (cache->tree[node] > 0) {
      node >>= 1;
      reset++;
   }

   cache->tree[node] = reset;

   while (cache->tree[node] == cache->tree[node ^ 1]) {
      node >>= 1;
      cache->tree[node] = cache->tree[node] + 1;
   }

   while (cache->tree[node] > cache->tree[node >> 1]) {
      cache->tree[node >> 1] = cache->tree[node];
      node >>= 1;
   }
}
static void *relocate(void *data, void *user)
{
   return (uint8_t *)data - ((uint8_t **)user)[0] + ((uint8_t **)user)[1];
}
static void callback(KHRN_MAP_T *map, uint32_t key, void *value, void *user)
{
   CACHE_ENTRY_T *entry = (CACHE_ENTRY_T *)value;

   entry->link.prev = (CACHE_LINK_T *)relocate(entry->link.prev, user);
   entry->link.next = (CACHE_LINK_T *)relocate(entry->link.next, user);

   // Coverity has rightly pointed out that the allocations done in the next codeline can fail
   // verify will only assert the code in debug mode. Use in release mode stays the same as before...
   verify(khrn_pointer_map_insert(map, key, relocate(value, user)));
}
static int send_grow(CLIENT_THREAD_STATE_T *thread)
{
   return RPC_BOOLEAN_RES(RPC_CALL0_RES(glintCacheGrow_impl,
					//thread, 
					GLINTCACHEGROW_ID));
}

static void tree_init(uint8_t *tree, int depth)
{
   int i;

   tree[0] = depth + 1;

   for (i = 1; i < 1 << depth; i++)
      tree[i] = tree[i >> 1] - 1;
}

static int grow(CLIENT_THREAD_STATE_T *thread, KHRN_CACHE_T *cache)
{
   /*
      try to grow the server cache
   */

   uint8_t *tree;
   uint8_t *data;
   int i;

   if (cache->server_depth == cache->client_depth) {
      if (cache->server_depth < CACHE_MAX_DEPTH && send_grow(thread))
         cache->server_depth++;
      else
         return 0;
   }

   tree = (uint8_t *)khrn_platform_malloc(1 << (cache->client_depth + 1), "KHRN_CACHE_T.tree");
   data = (uint8_t *)khrn_platform_malloc(1 << (cache->client_depth + CACHE_LOG2_BLOCK_SIZE), "KHRN_CACHE_T.data");

   if (!tree || !data) {
      khrn_platform_free(tree);
      khrn_platform_free(data);
      return 0;
   }

   /*
      set up new tree structure
   */

   tree_init(tree, cache->client_depth + 1);

   if (cache->client_depth) {
      for (i = 1; i < 1 << cache->client_depth; i++)
         tree[i ^ 3 << _msb(i)] = cache->tree[i];

      tree[1] = tree[3] + (tree[2] == tree[3]);
   }

   /*
      relocate pointermap and linked list pointers
   */
   {
      uint8_t *user[2];
	  user[0] = cache->data;
	  user[1] = data;

      khrn_pointer_map_iterate(&cache->map, callback, user);

      cache->start.next->prev = &cache->start;
      if (cache->start.next != &cache->end)
         cache->start.next = (CACHE_LINK_T *)relocate(cache->start.next, user);

      cache->end.prev->next = &cache->end;
      if (cache->end.prev != &cache->start)
         cache->end.prev = (CACHE_LINK_T *)relocate(cache->end.prev, user);
   }

   /*
      set up new data block
   */

   if (cache->data)
      platform_memcpy(data, cache->data, 1 << (cache->client_depth + CACHE_LOG2_BLOCK_SIZE - 1));

   /*
      free old blocks, update structure
   */

   khrn_platform_free(cache->tree);
   khrn_platform_free(cache->data);

   cache->tree = tree;
   cache->data = data;

   cache->client_depth++;

   return 1;
}
static void send_delete(CLIENT_THREAD_STATE_T *thread, int base)
{
   RPC_CALL1(glintCacheDelete_impl,
             //thread, 
             GLINTCACHEDELETE_ID,
             RPC_UINT(base));
}
static void link_remove(CACHE_LINK_T *link)
{
   link->next->prev = link->prev;
   link->prev->next = link->next;
}
static void discard(CLIENT_THREAD_STATE_T *thread, KHRN_CACHE_T *cache, CACHE_ENTRY_T *entry)
{
   heap_free(cache, (int)((uint8_t *)entry - cache->data) >> CACHE_LOG2_BLOCK_SIZE);

   khrn_pointer_map_delete(&cache->map, entry->key);

   link_remove(&entry->link);

   send_delete(thread, (int)((uint8_t *)entry - cache->data));
}
static void send_create(CLIENT_THREAD_STATE_T *thread, int base)
{
   RPC_CALL1(glintCacheCreate_impl,
             //thread, 
             GLINTCACHECREATE_ID,
             RPC_UINT(base));
}
static void link_insert(CACHE_LINK_T *link, CACHE_LINK_T *prev, CACHE_LINK_T *next)
{
   vcos_assert(prev->next == next);
   vcos_assert(next->prev == prev);

   link->prev = prev;
   link->next = next;
   prev->next = link;
   next->prev = link;
}
static int heap_avail(KHRN_CACHE_T *cache, int size)
{
   return cache->tree && cache->tree[1] >= size;
}
static int heap_alloc(KHRN_CACHE_T *cache, int size)
{
   int node, fixup;
   int i;

   assert(heap_avail(cache, size));

   node = 1;
   for (i = 0; i < cache->client_depth - size; i++) {
      node <<= 1;
      if (cache->tree[node + 1] >= size && (cache->tree[node] < size || cache->tree[node] > cache->tree[node + 1]))
         node++;
   }

   cache->tree[node] = 0;

   for (fixup = node; cache->tree[fixup ^ 1] < cache->tree [fixup >> 1]; fixup >>= 1)
      cache->tree[fixup >> 1] = _max(cache->tree[fixup], cache->tree[fixup ^ 1]);

   return node * (1 << (size - 1)) - (1 << (cache->client_depth - 1));
}
static void send_data(CLIENT_THREAD_STATE_T *thread, int base, const void *data, int len)
{
   int off = 0;

   while (len > 0) {
      int chunk = _min(len, MERGE_BUFFER_SIZE-CLIENT_MAKE_CURRENT_SIZE-12-8);

      RPC_CALL3_IN_CTRL(glintCacheData_impl,
                        //thread, 
                        GLINTCACHEDATA_ID,
                        RPC_UINT(base + off),
                        RPC_SIZEI(chunk),
                        (char *)data + off,
                        chunk);

      off += chunk;
      len -= chunk;
   }
}
int khrn_cache_lookup(KHRN_CACHE_T *cache, const void *data, int len, int sig, bool is_opengles_11)
{ 
   //CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE(); /* from new*/
   CLIENT_THREAD_STATE_T *thread = NULL;
   int key = hash(data, len, sig);

   CACHE_ENTRY_T *entry = (CACHE_ENTRY_T *)khrn_pointer_map_lookup(&cache->map, key);

#ifdef SIMPENROSE_RECORD_OUTPUT
   if (xxx_first)
   {
      /* Cannot grow cache while things are locked for recording. So grow it now as much as we think we'll need */
      uint32_t i;
      xxx_first = false;
      for (i = 0; i < 15; i++)
	 grow(thread, cache);
   }
#endif

   if (entry && entry->len >= len && !memcmp(entry->data, data, len)) {
      /*
	 move link to end of discard queue
      */

      link_remove(&entry->link);
      link_insert(&entry->link, cache->end.prev, &cache->end);
   } else {
      int size = _max(_msb(len + sizeof(CACHE_ENTRY_T) - 1) + 2 - CACHE_LOG2_BLOCK_SIZE, 1);
      int block;

      CACHE_LINK_T *link;

      if (entry)
	 discard(thread, cache, entry);

      while (!heap_avail(cache, size) && grow(thread, cache));

      for (link = cache->start.next; link != &cache->end && !heap_avail(cache, size); link = link->next)
	 discard(thread, cache, (CACHE_ENTRY_T *)link);

      if (!heap_avail(cache, size))
	 return -1;

      block = heap_alloc(cache, size);

      entry = (CACHE_ENTRY_T *)(cache->data + (block << CACHE_LOG2_BLOCK_SIZE));
      entry->len = len;
      entry->key = key;
      platform_memcpy(entry->data, data, len);

      if (!khrn_pointer_map_insert(&cache->map, key, entry)) {
	 heap_free(cache, block);
	 return -1;
      }

      link_insert(&entry->link, cache->end.prev, &cache->end);

      send_create(thread, (int)((uint8_t *)entry - cache->data));
      send_data(thread, (int)(entry->data - cache->data), data, len);
   }

   return (int)((uint8_t *)entry - cache->data);
}

