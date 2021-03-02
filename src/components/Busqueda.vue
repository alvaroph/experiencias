<template>
  <div >
   <b-button @click=peticionDatos>Consultar</b-button>
   
   {{resultado}}
  </div>
</template>

<script>
export default {
  name: 'Busqueda',
  props: {
    resultado:[]
  },
  methods:{
    peticionDatos : function(){
      this.axios.get('http://labs.iam.cat/~aperezh/BACKvviajes/api.php/records/EXPERIENCIA').then((response) => {
      this.resultado=response.data.records;
    })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
