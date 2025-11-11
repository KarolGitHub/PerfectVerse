<template>
  <q-page class="row items-center justify-evenly">
    <div style="width: 600px; height: 400px;">
      <TresCanvas clear-color="#222">
        <tres-perspective-camera :position="[0, 0, 5]" />
        <tres-mesh>
          <tres-box-geometry :args="[1, 1, 1]" />
          <tres-mesh-standard-material color="skyblue" />
        </tres-mesh>
        <tres-ambient-light :intensity="0.5" />
        <tres-directional-light :position="[2, 2, 2]" :intensity="1" />
      </TresCanvas>
    </div>
  </q-page>
</template>

<script setup lang="ts">
</script>
