class OrdersController < ApplicationController
  def create
    binding.pry  #--> para resolver erros, debug
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.status = :pending
    
    if @order.save
      flash[:notice] = 'Pedido Criado com sucesso'
    else
      flash[:notice] = 'Erro: falha ao criar o pedido'
    end
    redirect_to root_path
  end

  private 

  def order_params
    params.permit(:product_id)
  end
end
