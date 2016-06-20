class HomeController < ApplicationController
	layout 'home'

	def index
		@coordinador = Coordinador.all.order('created_at DESC')
		@galeria=Gallery.limit(3).order("created_at desc")
	   @noticia=Noticium.limit(3).order("created_at desc")
	end

	def pazyvida
		@resul = Institucion.where(:tipo=> "Paz Y vida")
	end

	def ayudas_sociales
		@ayudas = Tipo.where(:id=>params[:id])
		#@solicitud =  Solicitud.new
		flash[:notice] = ''
		@cedula =params['cedula']
		@nombre1 =params['nombre1']
		@nombre2 =params['nombre2']
		@apellido1 =params['apellido1']
		@apellido2 =params['apellido2']
		@apellido1 =params['apellido1']
		@fecha_nac =params['fecha_nac']
		@direccion =params['direccion']
		@sexo   =params['sexo']
		@municipio   =params['municipio']
		@ayuda=params['ayuda']
		@telefono1=params['telefono1']
		@telefono2=params['telefono2']
		if !params['nombre1'].blank? and !params['cedula'].blank? and !params['apellido1'].blank? and !params['direccion'].blank? and !params['fecha_nac'].blank?  and !params['sexo'].blank? and !params['municipio'].blank? and !params['ayuda'].blank? and !params['telefono1'].blank?
    end
	end

	def solicitud


		@ayudas = Tipo.where(:id=>params[:id])
		#@solicitud =  Solicitud.new
	end
	def quienes_somos
			@resul = Institucion.where(:tipo=> "Funsone")
	end
	def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end

	def contacto
		   flash[:notice] = ''
			@nombre =params['nombre']
			@email =params['email']
			@tlf   =params['tlf']
			@msj   =params['msj']
			@ip=request.remote_ip
		#	@ip= IPSocket.getaddress(Socket.gethostname)where(ip:'127.0.0.1', email:'jeaninne33@gmail.com')
			if !params['nombre'].blank? and !params['email'].blank? and !params['msj'].blank?
				  enviar_mensaje(@nombre,@email,@tlf,@msj)
				  @existe=Contacto.where(ip:'#{@ip}',email:'#{@email}', msj:'#{@msj}')
				  if @existe.blank?
							Contacto.create(:nombre=>@nombre,:email=>@email,:tlf=>@tlf,:msj=>@msj,:ip=>@ip)
				  end
			end
	end
	def enviar_mensaje(nombre,email,tlf,msj)
		@nombre =nombre
		@email =email
		@tlf=tlf
		@msj=msj
		if  Notification.mensaje(@nombre,@email,@tlf,@msj).deliver_now
				 flash[:notice] = 'Su mensaje ha sido enviado exitosamente =).'
		end
	end
	def noticias
	    @noticias=Noticium.order("created_at desc")
	end
	def galerias
		@galerias=Gallery.order("created_at desc")
	end
	def single_noticia
		@noticia=Noticium.find(params[:id])
	end
	def single_galeria
		@galeria=Gallery.find(params[:id])
		@otras=Gallery.where("id <> #{params[:id]}").order("created_at desc")
	end

	private
		# Never trust parameters from the scary internet, only allow the white list through.
		def contacto_params
			params.require(:contacto).permit(:nombre,:email, :tlf,:msj, :ip)
		end
		def solicitud_params
			params.require(:contacto).permit(:nombre1,:nombre2,:email, :tlf,:msj, :ip)
		end
end
