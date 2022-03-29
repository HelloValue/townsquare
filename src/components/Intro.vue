<template>
  <div class="intro">
    <img src="static/apple-icon.png" alt="" />
    欢迎来到 睡狮酒馆（非官方）
    <b>血染钟楼线上版!</b> 请通过以下方式
    <span class="button" @click="toggleMenu">
      <font-awesome-icon icon="cog" /> 菜单
    </span>添加更多玩家,
    或按 <b>[A].</b>你也可以通过按 <b>[J]</b> 加入一局游戏.<br />
    <div class="footer">
      This project is free and open source and can be found on
      <a href="https://github.com/bra1n/townsquare" target="_blank">GitHub</a>.
      It is not affiliated with The Pandemonium Institute. "Blood on the
      Clocktower" is a trademark of Steven Medway and The Pandemonium Institute.
    </div>
  </div>
</template>

<script>
import { mapMutations } from "vuex";

export default {
  methods: mapMutations(["toggleMenu"])
};
</script>

<style scoped lang="scss">
// Intro
.intro {
  text-align: center;
  width: 50%;
  font-size: 120%;
  position: absolute;
  padding: 10px;
  background: rgba(0, 0, 0, 0.5);
  border: 3px solid black;
  border-radius: 10px;
  z-index: 3;
  a {
    color: white;
  }
  img {
    position: absolute;
    bottom: 100%;
    left: 50%;
    width: 25vh;
    margin-left: -12.5vh;
    margin-bottom: 2vh;
    max-width: 192px;
    border-radius: 50%;
    box-shadow: 0 0 10px black;
    border: 3px solid black;
  }
  .footer {
    font-size: 60%;
    opacity: 0.75;
  }
}
</style>
