package com.xs.coal.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class IndexsystemExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public IndexsystemExample() {
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

        public Criteria andIndexidIsNull() {
            addCriterion("indexID is null");
            return (Criteria) this;
        }

        public Criteria andIndexidIsNotNull() {
            addCriterion("indexID is not null");
            return (Criteria) this;
        }

        public Criteria andIndexidEqualTo(Integer value) {
            addCriterion("indexID =", value, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidNotEqualTo(Integer value) {
            addCriterion("indexID <>", value, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidGreaterThan(Integer value) {
            addCriterion("indexID >", value, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidGreaterThanOrEqualTo(Integer value) {
            addCriterion("indexID >=", value, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidLessThan(Integer value) {
            addCriterion("indexID <", value, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidLessThanOrEqualTo(Integer value) {
            addCriterion("indexID <=", value, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidIn(List<Integer> values) {
            addCriterion("indexID in", values, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidNotIn(List<Integer> values) {
            addCriterion("indexID not in", values, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidBetween(Integer value1, Integer value2) {
            addCriterion("indexID between", value1, value2, "indexid");
            return (Criteria) this;
        }

        public Criteria andIndexidNotBetween(Integer value1, Integer value2) {
            addCriterion("indexID not between", value1, value2, "indexid");
            return (Criteria) this;
        }

        public Criteria andPlantidIsNull() {
            addCriterion("plantID is null");
            return (Criteria) this;
        }

        public Criteria andPlantidIsNotNull() {
            addCriterion("plantID is not null");
            return (Criteria) this;
        }

        public Criteria andPlantidEqualTo(String value) {
            addCriterion("plantID =", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidNotEqualTo(String value) {
            addCriterion("plantID <>", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidGreaterThan(String value) {
            addCriterion("plantID >", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidGreaterThanOrEqualTo(String value) {
            addCriterion("plantID >=", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidLessThan(String value) {
            addCriterion("plantID <", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidLessThanOrEqualTo(String value) {
            addCriterion("plantID <=", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidLike(String value) {
            addCriterion("plantID like", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidNotLike(String value) {
            addCriterion("plantID not like", value, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidIn(List<String> values) {
            addCriterion("plantID in", values, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidNotIn(List<String> values) {
            addCriterion("plantID not in", values, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidBetween(String value1, String value2) {
            addCriterion("plantID between", value1, value2, "plantid");
            return (Criteria) this;
        }

        public Criteria andPlantidNotBetween(String value1, String value2) {
            addCriterion("plantID not between", value1, value2, "plantid");
            return (Criteria) this;
        }

        public Criteria andIndexnameIsNull() {
            addCriterion("indexName is null");
            return (Criteria) this;
        }

        public Criteria andIndexnameIsNotNull() {
            addCriterion("indexName is not null");
            return (Criteria) this;
        }

        public Criteria andIndexnameEqualTo(String value) {
            addCriterion("indexName =", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameNotEqualTo(String value) {
            addCriterion("indexName <>", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameGreaterThan(String value) {
            addCriterion("indexName >", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameGreaterThanOrEqualTo(String value) {
            addCriterion("indexName >=", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameLessThan(String value) {
            addCriterion("indexName <", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameLessThanOrEqualTo(String value) {
            addCriterion("indexName <=", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameLike(String value) {
            addCriterion("indexName like", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameNotLike(String value) {
            addCriterion("indexName not like", value, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameIn(List<String> values) {
            addCriterion("indexName in", values, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameNotIn(List<String> values) {
            addCriterion("indexName not in", values, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameBetween(String value1, String value2) {
            addCriterion("indexName between", value1, value2, "indexname");
            return (Criteria) this;
        }

        public Criteria andIndexnameNotBetween(String value1, String value2) {
            addCriterion("indexName not between", value1, value2, "indexname");
            return (Criteria) this;
        }

        public Criteria andIsdeleteIsNull() {
            addCriterion("isdelete is null");
            return (Criteria) this;
        }

        public Criteria andIsdeleteIsNotNull() {
            addCriterion("isdelete is not null");
            return (Criteria) this;
        }

        public Criteria andIsdeleteEqualTo(String value) {
            addCriterion("isdelete =", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotEqualTo(String value) {
            addCriterion("isdelete <>", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteGreaterThan(String value) {
            addCriterion("isdelete >", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteGreaterThanOrEqualTo(String value) {
            addCriterion("isdelete >=", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteLessThan(String value) {
            addCriterion("isdelete <", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteLessThanOrEqualTo(String value) {
            addCriterion("isdelete <=", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteLike(String value) {
            addCriterion("isdelete like", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotLike(String value) {
            addCriterion("isdelete not like", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteIn(List<String> values) {
            addCriterion("isdelete in", values, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotIn(List<String> values) {
            addCriterion("isdelete not in", values, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteBetween(String value1, String value2) {
            addCriterion("isdelete between", value1, value2, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotBetween(String value1, String value2) {
            addCriterion("isdelete not between", value1, value2, "isdelete");
            return (Criteria) this;
        }

        public Criteria andUnitIsNull() {
            addCriterion("unit is null");
            return (Criteria) this;
        }

        public Criteria andUnitIsNotNull() {
            addCriterion("unit is not null");
            return (Criteria) this;
        }

        public Criteria andUnitEqualTo(String value) {
            addCriterion("unit =", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotEqualTo(String value) {
            addCriterion("unit <>", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitGreaterThan(String value) {
            addCriterion("unit >", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitGreaterThanOrEqualTo(String value) {
            addCriterion("unit >=", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLessThan(String value) {
            addCriterion("unit <", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLessThanOrEqualTo(String value) {
            addCriterion("unit <=", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitLike(String value) {
            addCriterion("unit like", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotLike(String value) {
            addCriterion("unit not like", value, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitIn(List<String> values) {
            addCriterion("unit in", values, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotIn(List<String> values) {
            addCriterion("unit not in", values, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitBetween(String value1, String value2) {
            addCriterion("unit between", value1, value2, "unit");
            return (Criteria) this;
        }

        public Criteria andUnitNotBetween(String value1, String value2) {
            addCriterion("unit not between", value1, value2, "unit");
            return (Criteria) this;
        }

        public Criteria andBasicnumberIsNull() {
            addCriterion("basicNumber is null");
            return (Criteria) this;
        }

        public Criteria andBasicnumberIsNotNull() {
            addCriterion("basicNumber is not null");
            return (Criteria) this;
        }

        public Criteria andBasicnumberEqualTo(Byte value) {
            addCriterion("basicNumber =", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberNotEqualTo(Byte value) {
            addCriterion("basicNumber <>", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberGreaterThan(Byte value) {
            addCriterion("basicNumber >", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberGreaterThanOrEqualTo(Byte value) {
            addCriterion("basicNumber >=", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberLessThan(Byte value) {
            addCriterion("basicNumber <", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberLessThanOrEqualTo(Byte value) {
            addCriterion("basicNumber <=", value, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberIn(List<Byte> values) {
            addCriterion("basicNumber in", values, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberNotIn(List<Byte> values) {
            addCriterion("basicNumber not in", values, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberBetween(Byte value1, Byte value2) {
            addCriterion("basicNumber between", value1, value2, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andBasicnumberNotBetween(Byte value1, Byte value2) {
            addCriterion("basicNumber not between", value1, value2, "basicnumber");
            return (Criteria) this;
        }

        public Criteria andParentidIsNull() {
            addCriterion("parentID is null");
            return (Criteria) this;
        }

        public Criteria andParentidIsNotNull() {
            addCriterion("parentID is not null");
            return (Criteria) this;
        }

        public Criteria andParentidEqualTo(String value) {
            addCriterion("parentID =", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotEqualTo(String value) {
            addCriterion("parentID <>", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidGreaterThan(String value) {
            addCriterion("parentID >", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidGreaterThanOrEqualTo(String value) {
            addCriterion("parentID >=", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidLessThan(String value) {
            addCriterion("parentID <", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidLessThanOrEqualTo(String value) {
            addCriterion("parentID <=", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidLike(String value) {
            addCriterion("parentID like", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotLike(String value) {
            addCriterion("parentID not like", value, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidIn(List<String> values) {
            addCriterion("parentID in", values, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotIn(List<String> values) {
            addCriterion("parentID not in", values, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidBetween(String value1, String value2) {
            addCriterion("parentID between", value1, value2, "parentid");
            return (Criteria) this;
        }

        public Criteria andParentidNotBetween(String value1, String value2) {
            addCriterion("parentID not between", value1, value2, "parentid");
            return (Criteria) this;
        }

        public Criteria andAddtimeIsNull() {
            addCriterion("addtime is null");
            return (Criteria) this;
        }

        public Criteria andAddtimeIsNotNull() {
            addCriterion("addtime is not null");
            return (Criteria) this;
        }

        public Criteria andAddtimeEqualTo(Date value) {
            addCriterion("addtime =", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeNotEqualTo(Date value) {
            addCriterion("addtime <>", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeGreaterThan(Date value) {
            addCriterion("addtime >", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("addtime >=", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeLessThan(Date value) {
            addCriterion("addtime <", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeLessThanOrEqualTo(Date value) {
            addCriterion("addtime <=", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeIn(List<Date> values) {
            addCriterion("addtime in", values, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeNotIn(List<Date> values) {
            addCriterion("addtime not in", values, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeBetween(Date value1, Date value2) {
            addCriterion("addtime between", value1, value2, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeNotBetween(Date value1, Date value2) {
            addCriterion("addtime not between", value1, value2, "addtime");
            return (Criteria) this;
        }

        public Criteria andMaxIsNull() {
            addCriterion("max is null");
            return (Criteria) this;
        }

        public Criteria andMaxIsNotNull() {
            addCriterion("max is not null");
            return (Criteria) this;
        }

        public Criteria andMaxEqualTo(Double value) {
            addCriterion("max =", value, "max");
            return (Criteria) this;
        }

        public Criteria andMaxNotEqualTo(Double value) {
            addCriterion("max <>", value, "max");
            return (Criteria) this;
        }

        public Criteria andMaxGreaterThan(Double value) {
            addCriterion("max >", value, "max");
            return (Criteria) this;
        }

        public Criteria andMaxGreaterThanOrEqualTo(Double value) {
            addCriterion("max >=", value, "max");
            return (Criteria) this;
        }

        public Criteria andMaxLessThan(Double value) {
            addCriterion("max <", value, "max");
            return (Criteria) this;
        }

        public Criteria andMaxLessThanOrEqualTo(Double value) {
            addCriterion("max <=", value, "max");
            return (Criteria) this;
        }

        public Criteria andMaxIn(List<Double> values) {
            addCriterion("max in", values, "max");
            return (Criteria) this;
        }

        public Criteria andMaxNotIn(List<Double> values) {
            addCriterion("max not in", values, "max");
            return (Criteria) this;
        }

        public Criteria andMaxBetween(Double value1, Double value2) {
            addCriterion("max between", value1, value2, "max");
            return (Criteria) this;
        }

        public Criteria andMaxNotBetween(Double value1, Double value2) {
            addCriterion("max not between", value1, value2, "max");
            return (Criteria) this;
        }

        public Criteria andMinIsNull() {
            addCriterion("min is null");
            return (Criteria) this;
        }

        public Criteria andMinIsNotNull() {
            addCriterion("min is not null");
            return (Criteria) this;
        }

        public Criteria andMinEqualTo(Double value) {
            addCriterion("min =", value, "min");
            return (Criteria) this;
        }

        public Criteria andMinNotEqualTo(Double value) {
            addCriterion("min <>", value, "min");
            return (Criteria) this;
        }

        public Criteria andMinGreaterThan(Double value) {
            addCriterion("min >", value, "min");
            return (Criteria) this;
        }

        public Criteria andMinGreaterThanOrEqualTo(Double value) {
            addCriterion("min >=", value, "min");
            return (Criteria) this;
        }

        public Criteria andMinLessThan(Double value) {
            addCriterion("min <", value, "min");
            return (Criteria) this;
        }

        public Criteria andMinLessThanOrEqualTo(Double value) {
            addCriterion("min <=", value, "min");
            return (Criteria) this;
        }

        public Criteria andMinIn(List<Double> values) {
            addCriterion("min in", values, "min");
            return (Criteria) this;
        }

        public Criteria andMinNotIn(List<Double> values) {
            addCriterion("min not in", values, "min");
            return (Criteria) this;
        }

        public Criteria andMinBetween(Double value1, Double value2) {
            addCriterion("min between", value1, value2, "min");
            return (Criteria) this;
        }

        public Criteria andMinNotBetween(Double value1, Double value2) {
            addCriterion("min not between", value1, value2, "min");
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