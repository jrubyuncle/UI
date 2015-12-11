class TutorsController < ApplicationController


	#get 'chap00', 'chap01','chap02','chap03', controller: :tutors
	#get 'chap10', 'chap10','chap11','chap12','chap13','chap14','chap15', controller: :tutors
	#get 'chap20','chap21','chap22','chap23', controller: :tutors
	#get 'chap30','chap31','chap32','chap33','chap34', controller: :tutors

	def show
		render "chap0#{params[:id]}"
		#render 'chap00'
		# params[:id]
	end

	def display_index_path
		render 'display_index'
	end

	def change_theme_path
		render 'change_theme'
	end

	def me
		render 'me'
	end


end
