package com.xs.coal.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DatadealExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DatadealExample() {
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

        public Criteria andPuidIsNull() {
            addCriterion("puid is null");
            return (Criteria) this;
        }

        public Criteria andPuidIsNotNull() {
            addCriterion("puid is not null");
            return (Criteria) this;
        }

        public Criteria andPuidEqualTo(Integer value) {
            addCriterion("puid =", value, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidNotEqualTo(Integer value) {
            addCriterion("puid <>", value, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidGreaterThan(Integer value) {
            addCriterion("puid >", value, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidGreaterThanOrEqualTo(Integer value) {
            addCriterion("puid >=", value, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidLessThan(Integer value) {
            addCriterion("puid <", value, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidLessThanOrEqualTo(Integer value) {
            addCriterion("puid <=", value, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidIn(List<Integer> values) {
            addCriterion("puid in", values, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidNotIn(List<Integer> values) {
            addCriterion("puid not in", values, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidBetween(Integer value1, Integer value2) {
            addCriterion("puid between", value1, value2, "puid");
            return (Criteria) this;
        }

        public Criteria andPuidNotBetween(Integer value1, Integer value2) {
            addCriterion("puid not between", value1, value2, "puid");
            return (Criteria) this;
        }

        public Criteria andUrlIsNull() {
            addCriterion("url is null");
            return (Criteria) this;
        }

        public Criteria andUrlIsNotNull() {
            addCriterion("url is not null");
            return (Criteria) this;
        }

        public Criteria andUrlEqualTo(String value) {
            addCriterion("url =", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlNotEqualTo(String value) {
            addCriterion("url <>", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlGreaterThan(String value) {
            addCriterion("url >", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlGreaterThanOrEqualTo(String value) {
            addCriterion("url >=", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlLessThan(String value) {
            addCriterion("url <", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlLessThanOrEqualTo(String value) {
            addCriterion("url <=", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlLike(String value) {
            addCriterion("url like", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlNotLike(String value) {
            addCriterion("url not like", value, "url");
            return (Criteria) this;
        }

        public Criteria andUrlIn(List<String> values) {
            addCriterion("url in", values, "url");
            return (Criteria) this;
        }

        public Criteria andUrlNotIn(List<String> values) {
            addCriterion("url not in", values, "url");
            return (Criteria) this;
        }

        public Criteria andUrlBetween(String value1, String value2) {
            addCriterion("url between", value1, value2, "url");
            return (Criteria) this;
        }

        public Criteria andUrlNotBetween(String value1, String value2) {
            addCriterion("url not between", value1, value2, "url");
            return (Criteria) this;
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

        public Criteria andDataidIsNull() {
            addCriterion("dataID is null");
            return (Criteria) this;
        }

        public Criteria andDataidIsNotNull() {
            addCriterion("dataID is not null");
            return (Criteria) this;
        }

        public Criteria andDataidEqualTo(String value) {
            addCriterion("dataID =", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidNotEqualTo(String value) {
            addCriterion("dataID <>", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidGreaterThan(String value) {
            addCriterion("dataID >", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidGreaterThanOrEqualTo(String value) {
            addCriterion("dataID >=", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidLessThan(String value) {
            addCriterion("dataID <", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidLessThanOrEqualTo(String value) {
            addCriterion("dataID <=", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidLike(String value) {
            addCriterion("dataID like", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidNotLike(String value) {
            addCriterion("dataID not like", value, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidIn(List<String> values) {
            addCriterion("dataID in", values, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidNotIn(List<String> values) {
            addCriterion("dataID not in", values, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidBetween(String value1, String value2) {
            addCriterion("dataID between", value1, value2, "dataid");
            return (Criteria) this;
        }

        public Criteria andDataidNotBetween(String value1, String value2) {
            addCriterion("dataID not between", value1, value2, "dataid");
            return (Criteria) this;
        }

        public Criteria andIndexnumberIsNull() {
            addCriterion("indexNumber is null");
            return (Criteria) this;
        }

        public Criteria andIndexnumberIsNotNull() {
            addCriterion("indexNumber is not null");
            return (Criteria) this;
        }

        public Criteria andIndexnumberEqualTo(Double value) {
            addCriterion("indexNumber =", value, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberNotEqualTo(Double value) {
            addCriterion("indexNumber <>", value, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberGreaterThan(Double value) {
            addCriterion("indexNumber >", value, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberGreaterThanOrEqualTo(Double value) {
            addCriterion("indexNumber >=", value, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberLessThan(Double value) {
            addCriterion("indexNumber <", value, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberLessThanOrEqualTo(Double value) {
            addCriterion("indexNumber <=", value, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberIn(List<Double> values) {
            addCriterion("indexNumber in", values, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberNotIn(List<Double> values) {
            addCriterion("indexNumber not in", values, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberBetween(Double value1, Double value2) {
            addCriterion("indexNumber between", value1, value2, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andIndexnumberNotBetween(Double value1, Double value2) {
            addCriterion("indexNumber not between", value1, value2, "indexnumber");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userID is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userID is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(String value) {
            addCriterion("userID =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(String value) {
            addCriterion("userID <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(String value) {
            addCriterion("userID >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(String value) {
            addCriterion("userID >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(String value) {
            addCriterion("userID <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(String value) {
            addCriterion("userID <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLike(String value) {
            addCriterion("userID like", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotLike(String value) {
            addCriterion("userID not like", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<String> values) {
            addCriterion("userID in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<String> values) {
            addCriterion("userID not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(String value1, String value2) {
            addCriterion("userID between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(String value1, String value2) {
            addCriterion("userID not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andTimeIsNull() {
            addCriterion("time is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("time is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(String value) {
            addCriterion("time =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(String value) {
            addCriterion("time <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(String value) {
            addCriterion("time >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(String value) {
            addCriterion("time >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(String value) {
            addCriterion("time <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(String value) {
            addCriterion("time <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLike(String value) {
            addCriterion("time like", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotLike(String value) {
            addCriterion("time not like", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<String> values) {
            addCriterion("time in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<String> values) {
            addCriterion("time not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(String value1, String value2) {
            addCriterion("time between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(String value1, String value2) {
            addCriterion("time not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andCommanduseridIsNull() {
            addCriterion("commandUserID is null");
            return (Criteria) this;
        }

        public Criteria andCommanduseridIsNotNull() {
            addCriterion("commandUserID is not null");
            return (Criteria) this;
        }

        public Criteria andCommanduseridEqualTo(String value) {
            addCriterion("commandUserID =", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridNotEqualTo(String value) {
            addCriterion("commandUserID <>", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridGreaterThan(String value) {
            addCriterion("commandUserID >", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridGreaterThanOrEqualTo(String value) {
            addCriterion("commandUserID >=", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridLessThan(String value) {
            addCriterion("commandUserID <", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridLessThanOrEqualTo(String value) {
            addCriterion("commandUserID <=", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridLike(String value) {
            addCriterion("commandUserID like", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridNotLike(String value) {
            addCriterion("commandUserID not like", value, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridIn(List<String> values) {
            addCriterion("commandUserID in", values, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridNotIn(List<String> values) {
            addCriterion("commandUserID not in", values, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridBetween(String value1, String value2) {
            addCriterion("commandUserID between", value1, value2, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommanduseridNotBetween(String value1, String value2) {
            addCriterion("commandUserID not between", value1, value2, "commanduserid");
            return (Criteria) this;
        }

        public Criteria andCommandtimeIsNull() {
            addCriterion("commandTime is null");
            return (Criteria) this;
        }

        public Criteria andCommandtimeIsNotNull() {
            addCriterion("commandTime is not null");
            return (Criteria) this;
        }

        public Criteria andCommandtimeEqualTo(Date value) {
            addCriterion("commandTime =", value, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeNotEqualTo(Date value) {
            addCriterion("commandTime <>", value, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeGreaterThan(Date value) {
            addCriterion("commandTime >", value, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("commandTime >=", value, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeLessThan(Date value) {
            addCriterion("commandTime <", value, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeLessThanOrEqualTo(Date value) {
            addCriterion("commandTime <=", value, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeIn(List<Date> values) {
            addCriterion("commandTime in", values, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeNotIn(List<Date> values) {
            addCriterion("commandTime not in", values, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeBetween(Date value1, Date value2) {
            addCriterion("commandTime between", value1, value2, "commandtime");
            return (Criteria) this;
        }

        public Criteria andCommandtimeNotBetween(Date value1, Date value2) {
            addCriterion("commandTime not between", value1, value2, "commandtime");
            return (Criteria) this;
        }

        public Criteria andNoteIsNull() {
            addCriterion("note is null");
            return (Criteria) this;
        }

        public Criteria andNoteIsNotNull() {
            addCriterion("note is not null");
            return (Criteria) this;
        }

        public Criteria andNoteEqualTo(String value) {
            addCriterion("note =", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotEqualTo(String value) {
            addCriterion("note <>", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteGreaterThan(String value) {
            addCriterion("note >", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteGreaterThanOrEqualTo(String value) {
            addCriterion("note >=", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLessThan(String value) {
            addCriterion("note <", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLessThanOrEqualTo(String value) {
            addCriterion("note <=", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLike(String value) {
            addCriterion("note like", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotLike(String value) {
            addCriterion("note not like", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteIn(List<String> values) {
            addCriterion("note in", values, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotIn(List<String> values) {
            addCriterion("note not in", values, "note");
            return (Criteria) this;
        }

        public Criteria andNoteBetween(String value1, String value2) {
            addCriterion("note between", value1, value2, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotBetween(String value1, String value2) {
            addCriterion("note not between", value1, value2, "note");
            return (Criteria) this;
        }

        public Criteria andCommandIsNull() {
            addCriterion("command is null");
            return (Criteria) this;
        }

        public Criteria andCommandIsNotNull() {
            addCriterion("command is not null");
            return (Criteria) this;
        }

        public Criteria andCommandEqualTo(String value) {
            addCriterion("command =", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandNotEqualTo(String value) {
            addCriterion("command <>", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandGreaterThan(String value) {
            addCriterion("command >", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandGreaterThanOrEqualTo(String value) {
            addCriterion("command >=", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandLessThan(String value) {
            addCriterion("command <", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandLessThanOrEqualTo(String value) {
            addCriterion("command <=", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandLike(String value) {
            addCriterion("command like", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandNotLike(String value) {
            addCriterion("command not like", value, "command");
            return (Criteria) this;
        }

        public Criteria andCommandIn(List<String> values) {
            addCriterion("command in", values, "command");
            return (Criteria) this;
        }

        public Criteria andCommandNotIn(List<String> values) {
            addCriterion("command not in", values, "command");
            return (Criteria) this;
        }

        public Criteria andCommandBetween(String value1, String value2) {
            addCriterion("command between", value1, value2, "command");
            return (Criteria) this;
        }

        public Criteria andCommandNotBetween(String value1, String value2) {
            addCriterion("command not between", value1, value2, "command");
            return (Criteria) this;
        }

        public Criteria andDateIsNull() {
            addCriterion("date is null");
            return (Criteria) this;
        }

        public Criteria andDateIsNotNull() {
            addCriterion("date is not null");
            return (Criteria) this;
        }

        public Criteria andDateEqualTo(Date value) {
            addCriterion("date =", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotEqualTo(Date value) {
            addCriterion("date <>", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThan(Date value) {
            addCriterion("date >", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateGreaterThanOrEqualTo(Date value) {
            addCriterion("date >=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThan(Date value) {
            addCriterion("date <", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateLessThanOrEqualTo(Date value) {
            addCriterion("date <=", value, "date");
            return (Criteria) this;
        }

        public Criteria andDateIn(List<Date> values) {
            addCriterion("date in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotIn(List<Date> values) {
            addCriterion("date not in", values, "date");
            return (Criteria) this;
        }

        public Criteria andDateBetween(Date value1, Date value2) {
            addCriterion("date between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andDateNotBetween(Date value1, Date value2) {
            addCriterion("date not between", value1, value2, "date");
            return (Criteria) this;
        }

        public Criteria andIsoverIsNull() {
            addCriterion("isOver is null");
            return (Criteria) this;
        }

        public Criteria andIsoverIsNotNull() {
            addCriterion("isOver is not null");
            return (Criteria) this;
        }

        public Criteria andIsoverEqualTo(String value) {
            addCriterion("isOver =", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverNotEqualTo(String value) {
            addCriterion("isOver <>", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverGreaterThan(String value) {
            addCriterion("isOver >", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverGreaterThanOrEqualTo(String value) {
            addCriterion("isOver >=", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverLessThan(String value) {
            addCriterion("isOver <", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverLessThanOrEqualTo(String value) {
            addCriterion("isOver <=", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverLike(String value) {
            addCriterion("isOver like", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverNotLike(String value) {
            addCriterion("isOver not like", value, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverIn(List<String> values) {
            addCriterion("isOver in", values, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverNotIn(List<String> values) {
            addCriterion("isOver not in", values, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverBetween(String value1, String value2) {
            addCriterion("isOver between", value1, value2, "isover");
            return (Criteria) this;
        }

        public Criteria andIsoverNotBetween(String value1, String value2) {
            addCriterion("isOver not between", value1, value2, "isover");
            return (Criteria) this;
        }

        public Criteria andOvernumberIsNull() {
            addCriterion("overNumber is null");
            return (Criteria) this;
        }

        public Criteria andOvernumberIsNotNull() {
            addCriterion("overNumber is not null");
            return (Criteria) this;
        }

        public Criteria andOvernumberEqualTo(Double value) {
            addCriterion("overNumber =", value, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberNotEqualTo(Double value) {
            addCriterion("overNumber <>", value, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberGreaterThan(Double value) {
            addCriterion("overNumber >", value, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberGreaterThanOrEqualTo(Double value) {
            addCriterion("overNumber >=", value, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberLessThan(Double value) {
            addCriterion("overNumber <", value, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberLessThanOrEqualTo(Double value) {
            addCriterion("overNumber <=", value, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberIn(List<Double> values) {
            addCriterion("overNumber in", values, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberNotIn(List<Double> values) {
            addCriterion("overNumber not in", values, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberBetween(Double value1, Double value2) {
            addCriterion("overNumber between", value1, value2, "overnumber");
            return (Criteria) this;
        }

        public Criteria andOvernumberNotBetween(Double value1, Double value2) {
            addCriterion("overNumber not between", value1, value2, "overnumber");
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