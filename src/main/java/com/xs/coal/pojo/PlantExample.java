package com.xs.coal.pojo;

import java.util.ArrayList;
import java.util.List;

public class PlantExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PlantExample() {
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

        public Criteria andPlantnameIsNull() {
            addCriterion("plantName is null");
            return (Criteria) this;
        }

        public Criteria andPlantnameIsNotNull() {
            addCriterion("plantName is not null");
            return (Criteria) this;
        }

        public Criteria andPlantnameEqualTo(String value) {
            addCriterion("plantName =", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameNotEqualTo(String value) {
            addCriterion("plantName <>", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameGreaterThan(String value) {
            addCriterion("plantName >", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameGreaterThanOrEqualTo(String value) {
            addCriterion("plantName >=", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameLessThan(String value) {
            addCriterion("plantName <", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameLessThanOrEqualTo(String value) {
            addCriterion("plantName <=", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameLike(String value) {
            addCriterion("plantName like", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameNotLike(String value) {
            addCriterion("plantName not like", value, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameIn(List<String> values) {
            addCriterion("plantName in", values, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameNotIn(List<String> values) {
            addCriterion("plantName not in", values, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameBetween(String value1, String value2) {
            addCriterion("plantName between", value1, value2, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantnameNotBetween(String value1, String value2) {
            addCriterion("plantName not between", value1, value2, "plantname");
            return (Criteria) this;
        }

        public Criteria andPlantadressIsNull() {
            addCriterion("plantAdress is null");
            return (Criteria) this;
        }

        public Criteria andPlantadressIsNotNull() {
            addCriterion("plantAdress is not null");
            return (Criteria) this;
        }

        public Criteria andPlantadressEqualTo(String value) {
            addCriterion("plantAdress =", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressNotEqualTo(String value) {
            addCriterion("plantAdress <>", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressGreaterThan(String value) {
            addCriterion("plantAdress >", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressGreaterThanOrEqualTo(String value) {
            addCriterion("plantAdress >=", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressLessThan(String value) {
            addCriterion("plantAdress <", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressLessThanOrEqualTo(String value) {
            addCriterion("plantAdress <=", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressLike(String value) {
            addCriterion("plantAdress like", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressNotLike(String value) {
            addCriterion("plantAdress not like", value, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressIn(List<String> values) {
            addCriterion("plantAdress in", values, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressNotIn(List<String> values) {
            addCriterion("plantAdress not in", values, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressBetween(String value1, String value2) {
            addCriterion("plantAdress between", value1, value2, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantadressNotBetween(String value1, String value2) {
            addCriterion("plantAdress not between", value1, value2, "plantadress");
            return (Criteria) this;
        }

        public Criteria andPlantleaderIsNull() {
            addCriterion("plantLeader is null");
            return (Criteria) this;
        }

        public Criteria andPlantleaderIsNotNull() {
            addCriterion("plantLeader is not null");
            return (Criteria) this;
        }

        public Criteria andPlantleaderEqualTo(String value) {
            addCriterion("plantLeader =", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderNotEqualTo(String value) {
            addCriterion("plantLeader <>", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderGreaterThan(String value) {
            addCriterion("plantLeader >", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderGreaterThanOrEqualTo(String value) {
            addCriterion("plantLeader >=", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderLessThan(String value) {
            addCriterion("plantLeader <", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderLessThanOrEqualTo(String value) {
            addCriterion("plantLeader <=", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderLike(String value) {
            addCriterion("plantLeader like", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderNotLike(String value) {
            addCriterion("plantLeader not like", value, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderIn(List<String> values) {
            addCriterion("plantLeader in", values, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderNotIn(List<String> values) {
            addCriterion("plantLeader not in", values, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderBetween(String value1, String value2) {
            addCriterion("plantLeader between", value1, value2, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantleaderNotBetween(String value1, String value2) {
            addCriterion("plantLeader not between", value1, value2, "plantleader");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberIsNull() {
            addCriterion("plantPhoneNumber is null");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberIsNotNull() {
            addCriterion("plantPhoneNumber is not null");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberEqualTo(String value) {
            addCriterion("plantPhoneNumber =", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberNotEqualTo(String value) {
            addCriterion("plantPhoneNumber <>", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberGreaterThan(String value) {
            addCriterion("plantPhoneNumber >", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberGreaterThanOrEqualTo(String value) {
            addCriterion("plantPhoneNumber >=", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberLessThan(String value) {
            addCriterion("plantPhoneNumber <", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberLessThanOrEqualTo(String value) {
            addCriterion("plantPhoneNumber <=", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberLike(String value) {
            addCriterion("plantPhoneNumber like", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberNotLike(String value) {
            addCriterion("plantPhoneNumber not like", value, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberIn(List<String> values) {
            addCriterion("plantPhoneNumber in", values, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberNotIn(List<String> values) {
            addCriterion("plantPhoneNumber not in", values, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberBetween(String value1, String value2) {
            addCriterion("plantPhoneNumber between", value1, value2, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPlantphonenumberNotBetween(String value1, String value2) {
            addCriterion("plantPhoneNumber not between", value1, value2, "plantphonenumber");
            return (Criteria) this;
        }

        public Criteria andPidIsNull() {
            addCriterion("pId is null");
            return (Criteria) this;
        }

        public Criteria andPidIsNotNull() {
            addCriterion("pId is not null");
            return (Criteria) this;
        }

        public Criteria andPidEqualTo(String value) {
            addCriterion("pId =", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotEqualTo(String value) {
            addCriterion("pId <>", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThan(String value) {
            addCriterion("pId >", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThanOrEqualTo(String value) {
            addCriterion("pId >=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThan(String value) {
            addCriterion("pId <", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThanOrEqualTo(String value) {
            addCriterion("pId <=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLike(String value) {
            addCriterion("pId like", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotLike(String value) {
            addCriterion("pId not like", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidIn(List<String> values) {
            addCriterion("pId in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotIn(List<String> values) {
            addCriterion("pId not in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidBetween(String value1, String value2) {
            addCriterion("pId between", value1, value2, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotBetween(String value1, String value2) {
            addCriterion("pId not between", value1, value2, "pid");
            return (Criteria) this;
        }

        public Criteria andIsapartmentIsNull() {
            addCriterion("isApartment is null");
            return (Criteria) this;
        }

        public Criteria andIsapartmentIsNotNull() {
            addCriterion("isApartment is not null");
            return (Criteria) this;
        }

        public Criteria andIsapartmentEqualTo(Byte value) {
            addCriterion("isApartment =", value, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentNotEqualTo(Byte value) {
            addCriterion("isApartment <>", value, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentGreaterThan(Byte value) {
            addCriterion("isApartment >", value, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentGreaterThanOrEqualTo(Byte value) {
            addCriterion("isApartment >=", value, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentLessThan(Byte value) {
            addCriterion("isApartment <", value, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentLessThanOrEqualTo(Byte value) {
            addCriterion("isApartment <=", value, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentIn(List<Byte> values) {
            addCriterion("isApartment in", values, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentNotIn(List<Byte> values) {
            addCriterion("isApartment not in", values, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentBetween(Byte value1, Byte value2) {
            addCriterion("isApartment between", value1, value2, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsapartmentNotBetween(Byte value1, Byte value2) {
            addCriterion("isApartment not between", value1, value2, "isapartment");
            return (Criteria) this;
        }

        public Criteria andIsdeleteIsNull() {
            addCriterion("isDelete is null");
            return (Criteria) this;
        }

        public Criteria andIsdeleteIsNotNull() {
            addCriterion("isDelete is not null");
            return (Criteria) this;
        }

        public Criteria andIsdeleteEqualTo(String value) {
            addCriterion("isDelete =", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotEqualTo(String value) {
            addCriterion("isDelete <>", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteGreaterThan(String value) {
            addCriterion("isDelete >", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteGreaterThanOrEqualTo(String value) {
            addCriterion("isDelete >=", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteLessThan(String value) {
            addCriterion("isDelete <", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteLessThanOrEqualTo(String value) {
            addCriterion("isDelete <=", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteLike(String value) {
            addCriterion("isDelete like", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotLike(String value) {
            addCriterion("isDelete not like", value, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteIn(List<String> values) {
            addCriterion("isDelete in", values, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotIn(List<String> values) {
            addCriterion("isDelete not in", values, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteBetween(String value1, String value2) {
            addCriterion("isDelete between", value1, value2, "isdelete");
            return (Criteria) this;
        }

        public Criteria andIsdeleteNotBetween(String value1, String value2) {
            addCriterion("isDelete not between", value1, value2, "isdelete");
            return (Criteria) this;
        }

        public Criteria andTeamnameIsNull() {
            addCriterion("teamName is null");
            return (Criteria) this;
        }

        public Criteria andTeamnameIsNotNull() {
            addCriterion("teamName is not null");
            return (Criteria) this;
        }

        public Criteria andTeamnameEqualTo(String value) {
            addCriterion("teamName =", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameNotEqualTo(String value) {
            addCriterion("teamName <>", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameGreaterThan(String value) {
            addCriterion("teamName >", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameGreaterThanOrEqualTo(String value) {
            addCriterion("teamName >=", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameLessThan(String value) {
            addCriterion("teamName <", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameLessThanOrEqualTo(String value) {
            addCriterion("teamName <=", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameLike(String value) {
            addCriterion("teamName like", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameNotLike(String value) {
            addCriterion("teamName not like", value, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameIn(List<String> values) {
            addCriterion("teamName in", values, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameNotIn(List<String> values) {
            addCriterion("teamName not in", values, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameBetween(String value1, String value2) {
            addCriterion("teamName between", value1, value2, "teamname");
            return (Criteria) this;
        }

        public Criteria andTeamnameNotBetween(String value1, String value2) {
            addCriterion("teamName not between", value1, value2, "teamname");
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