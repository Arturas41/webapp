<template>
    <div>
        <slot name="title"></slot>
        <span><slot name="subtitle">Default Sub Title</slot></span>
        <slot>This is some body text son.</slot>
    </div>
</template>

<style>
    h1 {
        color: blue;
    }
</style>