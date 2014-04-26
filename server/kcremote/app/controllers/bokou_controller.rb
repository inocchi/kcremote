# -*- encoding: utf-8 -*-
class BokouController < ApplicationController

  # 
  def show

  end

  def battle

  end

  # 編成
  def hensei
    LogicTransition.hensei(Mouse::Bokou::HENSEI_X, Mouse::Bokou::HENSEI_Y)
    redirect_to controller: "hensei", action: "show"
  rescue => e
    error_log(e)
  end
 
  # 補給
  def hokyu
    LogicTransition.hokyu(Mouse::Bokou::HOKYU_X, Mouse::Bokou::HOKYU_Y)
    redirect_to controller: "hokyu", action: "show"
  rescue => e
    error_log(e)
  end
  
  # 改装
  def kaisou
    LogicTransition.kaisou(Mouse::Bokou::KAISOU_X, Mouse::Bokou::KAISOU_Y)
    redirect_to controller: "kaisou", action: "show"
  rescue => e
    error_log(e)   
  end

  # 入渠
  def nyukyo
    LogicTransition.nyukyo(Mouse::Bokou::NYUKYO_X, Mouse::Bokou::NYUKYO_Y)
    redirect_to controller: "nyukyo", action: "show"
  rescue => e
    error_log(e)
  end

  # 工廠
  def kousyo
    LogicTransition.kousyo(Mouse::Bokou::KOUSYO_X, Mouse::Bokou::KOUSYO_Y)
    redirect_to controller: "kousyo", action: "show"
  rescue => e
    error_log(e)
  end

end