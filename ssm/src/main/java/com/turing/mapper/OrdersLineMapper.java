package com.turing.mapper;

import com.turing.entity.OrdersLine;
import com.turing.entity.OrdersLineExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrdersLineMapper {
    long countByExample(OrdersLineExample example);

    int deleteByExample(OrdersLineExample example);

    int deleteByPrimaryKey(Integer oddId);

    int insert(OrdersLine record);

    int insertSelective(OrdersLine record);

    List<OrdersLine> selectByExample(OrdersLineExample example);

    OrdersLine selectByPrimaryKey(Integer oddId);

    int updateByExampleSelective(@Param("record") OrdersLine record, @Param("example") OrdersLineExample example);

    int updateByExample(@Param("record") OrdersLine record, @Param("example") OrdersLineExample example);

    int updateByPrimaryKeySelective(OrdersLine record);

    int updateByPrimaryKey(OrdersLine record);
}