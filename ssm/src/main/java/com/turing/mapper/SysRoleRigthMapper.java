package com.turing.mapper;

import com.turing.entity.SysRoleRigthExample;
import com.turing.entity.SysRoleRigthKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysRoleRigthMapper {
    long countByExample(SysRoleRigthExample example);

    int deleteByExample(SysRoleRigthExample example);

    int deleteByPrimaryKey(SysRoleRigthKey key);

    int insert(SysRoleRigthKey record);

    int insertSelective(SysRoleRigthKey record);

    List<SysRoleRigthKey> selectByExample(SysRoleRigthExample example);

    int updateByExampleSelective(@Param("record") SysRoleRigthKey record, @Param("example") SysRoleRigthExample example);

    int updateByExample(@Param("record") SysRoleRigthKey record, @Param("example") SysRoleRigthExample example);
}