var app = new Vue({
	el: "#app",

	components: { //une partie du site internet qui est visible
		'navbar': navbar,
		'postfeed': postfeed,
	},


	data: {

		title: "Mon Application",

		nouveauPost: "",

		postsStore,
	},

	methods: {

		adPost() {
			this.postsStore.addPost({
				auteur: "Nouvel Auteur",
				date: "00/00/0000",
				contenu: this.nouveauPost,
			});
			this.nouveauPost = ""
		}

	},

	computed: {
		posts() {
			return this.postsStore.posts
		}
	}



})
