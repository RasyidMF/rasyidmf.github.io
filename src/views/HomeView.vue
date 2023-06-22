<script lang="ts">
  export default {
    data: () => ({
      date: new Date(),
      
      interval: 0,

      appendDate: "",
    }),
    methods: {
      setupDate() {
        const d = new Date();
        this.appendDate = `
          ${("0" + (d.getMonth() + 1)).slice(-2)}-${("0" + d.getDay()).slice(-2)} 
          ${("0" + d.getHours()).slice(-2)}:${("0" + d.getMinutes()).slice(-2)}:${("0" + d.getSeconds()).slice(-2)}
        `;
      }
    },
    mounted() {
      this.setupDate();
      this.interval = setInterval(this.setupDate, 1000);
    },
    beforeUnmount() {
      clearInterval(this.interval);
    }
  }
</script>

<template>
  <main>
    <div style="font-size: 2.2rem">
      Hello 
      <span style="color: var(--rmf-c-text-success);">
        <span style="font-weight: bold;">
          {{ date.getFullYear() }}
          <span style="font-size: 1rem;">{{ appendDate }}</span>
        </span>
      </span>
    </div>

    <div>
      I can't change the future by itself if i always being lazy to improve my self )) <br>
      I'll continue mockuping my portofolio page ^^
    </div>

    <div style="color: white; margin-top: 12px">
      RasyidMF | Software Engineering
    </div>
  </main>
</template>
