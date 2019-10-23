package com.turing.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andProdIdIsNull() {
            addCriterion("prod_id is null");
            return (Criteria) this;
        }

        public Criteria andProdIdIsNotNull() {
            addCriterion("prod_id is not null");
            return (Criteria) this;
        }

        public Criteria andProdIdEqualTo(Integer value) {
            addCriterion("prod_id =", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdNotEqualTo(Integer value) {
            addCriterion("prod_id <>", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdGreaterThan(Integer value) {
            addCriterion("prod_id >", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("prod_id >=", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdLessThan(Integer value) {
            addCriterion("prod_id <", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdLessThanOrEqualTo(Integer value) {
            addCriterion("prod_id <=", value, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdIn(List<Integer> values) {
            addCriterion("prod_id in", values, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdNotIn(List<Integer> values) {
            addCriterion("prod_id not in", values, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdBetween(Integer value1, Integer value2) {
            addCriterion("prod_id between", value1, value2, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdIdNotBetween(Integer value1, Integer value2) {
            addCriterion("prod_id not between", value1, value2, "prodId");
            return (Criteria) this;
        }

        public Criteria andProdNameIsNull() {
            addCriterion("prod_name is null");
            return (Criteria) this;
        }

        public Criteria andProdNameIsNotNull() {
            addCriterion("prod_name is not null");
            return (Criteria) this;
        }

        public Criteria andProdNameEqualTo(String value) {
            addCriterion("prod_name =", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameNotEqualTo(String value) {
            addCriterion("prod_name <>", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameGreaterThan(String value) {
            addCriterion("prod_name >", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameGreaterThanOrEqualTo(String value) {
            addCriterion("prod_name >=", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameLessThan(String value) {
            addCriterion("prod_name <", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameLessThanOrEqualTo(String value) {
            addCriterion("prod_name <=", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameLike(String value) {
            addCriterion("prod_name like", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameNotLike(String value) {
            addCriterion("prod_name not like", value, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameIn(List<String> values) {
            addCriterion("prod_name in", values, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameNotIn(List<String> values) {
            addCriterion("prod_name not in", values, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameBetween(String value1, String value2) {
            addCriterion("prod_name between", value1, value2, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdNameNotBetween(String value1, String value2) {
            addCriterion("prod_name not between", value1, value2, "prodName");
            return (Criteria) this;
        }

        public Criteria andProdTypeIsNull() {
            addCriterion("prod_type is null");
            return (Criteria) this;
        }

        public Criteria andProdTypeIsNotNull() {
            addCriterion("prod_type is not null");
            return (Criteria) this;
        }

        public Criteria andProdTypeEqualTo(String value) {
            addCriterion("prod_type =", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeNotEqualTo(String value) {
            addCriterion("prod_type <>", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeGreaterThan(String value) {
            addCriterion("prod_type >", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeGreaterThanOrEqualTo(String value) {
            addCriterion("prod_type >=", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeLessThan(String value) {
            addCriterion("prod_type <", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeLessThanOrEqualTo(String value) {
            addCriterion("prod_type <=", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeLike(String value) {
            addCriterion("prod_type like", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeNotLike(String value) {
            addCriterion("prod_type not like", value, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeIn(List<String> values) {
            addCriterion("prod_type in", values, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeNotIn(List<String> values) {
            addCriterion("prod_type not in", values, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeBetween(String value1, String value2) {
            addCriterion("prod_type between", value1, value2, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdTypeNotBetween(String value1, String value2) {
            addCriterion("prod_type not between", value1, value2, "prodType");
            return (Criteria) this;
        }

        public Criteria andProdBatchIsNull() {
            addCriterion("prod_batch is null");
            return (Criteria) this;
        }

        public Criteria andProdBatchIsNotNull() {
            addCriterion("prod_batch is not null");
            return (Criteria) this;
        }

        public Criteria andProdBatchEqualTo(String value) {
            addCriterion("prod_batch =", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchNotEqualTo(String value) {
            addCriterion("prod_batch <>", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchGreaterThan(String value) {
            addCriterion("prod_batch >", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchGreaterThanOrEqualTo(String value) {
            addCriterion("prod_batch >=", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchLessThan(String value) {
            addCriterion("prod_batch <", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchLessThanOrEqualTo(String value) {
            addCriterion("prod_batch <=", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchLike(String value) {
            addCriterion("prod_batch like", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchNotLike(String value) {
            addCriterion("prod_batch not like", value, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchIn(List<String> values) {
            addCriterion("prod_batch in", values, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchNotIn(List<String> values) {
            addCriterion("prod_batch not in", values, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchBetween(String value1, String value2) {
            addCriterion("prod_batch between", value1, value2, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProdBatchNotBetween(String value1, String value2) {
            addCriterion("prod_batch not between", value1, value2, "prodBatch");
            return (Criteria) this;
        }

        public Criteria andProUnitIsNull() {
            addCriterion("pro_unit is null");
            return (Criteria) this;
        }

        public Criteria andProUnitIsNotNull() {
            addCriterion("pro_unit is not null");
            return (Criteria) this;
        }

        public Criteria andProUnitEqualTo(String value) {
            addCriterion("pro_unit =", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitNotEqualTo(String value) {
            addCriterion("pro_unit <>", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitGreaterThan(String value) {
            addCriterion("pro_unit >", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitGreaterThanOrEqualTo(String value) {
            addCriterion("pro_unit >=", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitLessThan(String value) {
            addCriterion("pro_unit <", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitLessThanOrEqualTo(String value) {
            addCriterion("pro_unit <=", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitLike(String value) {
            addCriterion("pro_unit like", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitNotLike(String value) {
            addCriterion("pro_unit not like", value, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitIn(List<String> values) {
            addCriterion("pro_unit in", values, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitNotIn(List<String> values) {
            addCriterion("pro_unit not in", values, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitBetween(String value1, String value2) {
            addCriterion("pro_unit between", value1, value2, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProUnitNotBetween(String value1, String value2) {
            addCriterion("pro_unit not between", value1, value2, "proUnit");
            return (Criteria) this;
        }

        public Criteria andProPriceIsNull() {
            addCriterion("pro_price is null");
            return (Criteria) this;
        }

        public Criteria andProPriceIsNotNull() {
            addCriterion("pro_price is not null");
            return (Criteria) this;
        }

        public Criteria andProPriceEqualTo(BigDecimal value) {
            addCriterion("pro_price =", value, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceNotEqualTo(BigDecimal value) {
            addCriterion("pro_price <>", value, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceGreaterThan(BigDecimal value) {
            addCriterion("pro_price >", value, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("pro_price >=", value, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceLessThan(BigDecimal value) {
            addCriterion("pro_price <", value, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("pro_price <=", value, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceIn(List<BigDecimal> values) {
            addCriterion("pro_price in", values, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceNotIn(List<BigDecimal> values) {
            addCriterion("pro_price not in", values, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("pro_price between", value1, value2, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("pro_price not between", value1, value2, "proPrice");
            return (Criteria) this;
        }

        public Criteria andProMemoIsNull() {
            addCriterion("pro_memo is null");
            return (Criteria) this;
        }

        public Criteria andProMemoIsNotNull() {
            addCriterion("pro_memo is not null");
            return (Criteria) this;
        }

        public Criteria andProMemoEqualTo(String value) {
            addCriterion("pro_memo =", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoNotEqualTo(String value) {
            addCriterion("pro_memo <>", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoGreaterThan(String value) {
            addCriterion("pro_memo >", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoGreaterThanOrEqualTo(String value) {
            addCriterion("pro_memo >=", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoLessThan(String value) {
            addCriterion("pro_memo <", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoLessThanOrEqualTo(String value) {
            addCriterion("pro_memo <=", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoLike(String value) {
            addCriterion("pro_memo like", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoNotLike(String value) {
            addCriterion("pro_memo not like", value, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoIn(List<String> values) {
            addCriterion("pro_memo in", values, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoNotIn(List<String> values) {
            addCriterion("pro_memo not in", values, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoBetween(String value1, String value2) {
            addCriterion("pro_memo between", value1, value2, "proMemo");
            return (Criteria) this;
        }

        public Criteria andProMemoNotBetween(String value1, String value2) {
            addCriterion("pro_memo not between", value1, value2, "proMemo");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}