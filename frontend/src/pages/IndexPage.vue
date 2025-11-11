<template>
  <q-page class="row items-center justify-evenly">
    <div style="width: 600px; height: 400px;">
      <TresCanvas clear-color="#222">
        <TresPerspectiveCamera :position="[0, 0, 5]" />
        <TresMesh>
          <TresBoxGeometry :args="[1, 1, 1]" />
          <TresMeshStandardMaterial color="skyblue" />
        </TresMesh>
        <TresAmbientLight :intensity="0.5" />
        <TresDirectionalLight :position="[2, 2, 2]" :intensity="1" />
      </TresCanvas>
    </div>
    <example-component
      title="Example component"
      active
      :todos="todos"
      :meta="meta"
    ></example-component>
  </q-page>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { TresCanvas, TresPerspectiveCamera, TresMesh, TresBoxGeometry, TresMeshStandardMaterial, TresAmbientLight, TresDirectionalLight } from '@tresjs/core';
import type { Todo, Meta } from 'components/models';
import ExampleComponent from 'components/ExampleComponent.vue';

const todos = ref<Todo[]>([
  {
    id: 1,
    content: 'ct1',
  },
  {
    id: 2,
    content: 'ct2',
  },
  {
    id: 3,
    content: 'ct3',
  },
  {
    id: 4,
    content: 'ct4',
  },
  {
    id: 5,
    content: 'ct5',
  },
]);

const meta = ref<Meta>({
  totalCount: 1200,
});
</script>
