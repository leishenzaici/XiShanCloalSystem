package com.xs.coal.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DataCodcrSsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DataCodcrSsExample() {
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

        public Criteria andUuidIsNull() {
            addCriterion("uuid is null");
            return (Criteria) this;
        }

        public Criteria andUuidIsNotNull() {
            addCriterion("uuid is not null");
            return (Criteria) this;
        }

        public Criteria andUuidEqualTo(String value) {
            addCriterion("uuid =", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotEqualTo(String value) {
            addCriterion("uuid <>", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidGreaterThan(String value) {
            addCriterion("uuid >", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidGreaterThanOrEqualTo(String value) {
            addCriterion("uuid >=", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidLessThan(String value) {
            addCriterion("uuid <", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidLessThanOrEqualTo(String value) {
            addCriterion("uuid <=", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidLike(String value) {
            addCriterion("uuid like", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotLike(String value) {
            addCriterion("uuid not like", value, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidIn(List<String> values) {
            addCriterion("uuid in", values, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotIn(List<String> values) {
            addCriterion("uuid not in", values, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidBetween(String value1, String value2) {
            addCriterion("uuid between", value1, value2, "uuid");
            return (Criteria) this;
        }

        public Criteria andUuidNotBetween(String value1, String value2) {
            addCriterion("uuid not between", value1, value2, "uuid");
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

        public Criteria andPlanidIsNull() {
            addCriterion("planID is null");
            return (Criteria) this;
        }

        public Criteria andPlanidIsNotNull() {
            addCriterion("planID is not null");
            return (Criteria) this;
        }

        public Criteria andPlanidEqualTo(String value) {
            addCriterion("planID =", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidNotEqualTo(String value) {
            addCriterion("planID <>", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidGreaterThan(String value) {
            addCriterion("planID >", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidGreaterThanOrEqualTo(String value) {
            addCriterion("planID >=", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidLessThan(String value) {
            addCriterion("planID <", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidLessThanOrEqualTo(String value) {
            addCriterion("planID <=", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidLike(String value) {
            addCriterion("planID like", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidNotLike(String value) {
            addCriterion("planID not like", value, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidIn(List<String> values) {
            addCriterion("planID in", values, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidNotIn(List<String> values) {
            addCriterion("planID not in", values, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidBetween(String value1, String value2) {
            addCriterion("planID between", value1, value2, "planid");
            return (Criteria) this;
        }

        public Criteria andPlanidNotBetween(String value1, String value2) {
            addCriterion("planID not between", value1, value2, "planid");
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

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("time =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("time <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("time >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("time >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("time <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("time <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("time in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("time not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("time between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("time not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteIsNull() {
            addCriterion("codcr_waste is null");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteIsNotNull() {
            addCriterion("codcr_waste is not null");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteEqualTo(Double value) {
            addCriterion("codcr_waste =", value, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteNotEqualTo(Double value) {
            addCriterion("codcr_waste <>", value, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteGreaterThan(Double value) {
            addCriterion("codcr_waste >", value, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteGreaterThanOrEqualTo(Double value) {
            addCriterion("codcr_waste >=", value, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteLessThan(Double value) {
            addCriterion("codcr_waste <", value, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteLessThanOrEqualTo(Double value) {
            addCriterion("codcr_waste <=", value, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteIn(List<Double> values) {
            addCriterion("codcr_waste in", values, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteNotIn(List<Double> values) {
            addCriterion("codcr_waste not in", values, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteBetween(Double value1, Double value2) {
            addCriterion("codcr_waste between", value1, value2, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrWasteNotBetween(Double value1, Double value2) {
            addCriterion("codcr_waste not between", value1, value2, "codcrWaste");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageIsNull() {
            addCriterion("codcr_sewage is null");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageIsNotNull() {
            addCriterion("codcr_sewage is not null");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageEqualTo(Double value) {
            addCriterion("codcr_sewage =", value, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageNotEqualTo(Double value) {
            addCriterion("codcr_sewage <>", value, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageGreaterThan(Double value) {
            addCriterion("codcr_sewage >", value, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageGreaterThanOrEqualTo(Double value) {
            addCriterion("codcr_sewage >=", value, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageLessThan(Double value) {
            addCriterion("codcr_sewage <", value, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageLessThanOrEqualTo(Double value) {
            addCriterion("codcr_sewage <=", value, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageIn(List<Double> values) {
            addCriterion("codcr_sewage in", values, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageNotIn(List<Double> values) {
            addCriterion("codcr_sewage not in", values, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageBetween(Double value1, Double value2) {
            addCriterion("codcr_sewage between", value1, value2, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrSewageNotBetween(Double value1, Double value2) {
            addCriterion("codcr_sewage not between", value1, value2, "codcrSewage");
            return (Criteria) this;
        }

        public Criteria andCodcrOutIsNull() {
            addCriterion("codcr_out is null");
            return (Criteria) this;
        }

        public Criteria andCodcrOutIsNotNull() {
            addCriterion("codcr_out is not null");
            return (Criteria) this;
        }

        public Criteria andCodcrOutEqualTo(Double value) {
            addCriterion("codcr_out =", value, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutNotEqualTo(Double value) {
            addCriterion("codcr_out <>", value, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutGreaterThan(Double value) {
            addCriterion("codcr_out >", value, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutGreaterThanOrEqualTo(Double value) {
            addCriterion("codcr_out >=", value, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutLessThan(Double value) {
            addCriterion("codcr_out <", value, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutLessThanOrEqualTo(Double value) {
            addCriterion("codcr_out <=", value, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutIn(List<Double> values) {
            addCriterion("codcr_out in", values, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutNotIn(List<Double> values) {
            addCriterion("codcr_out not in", values, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutBetween(Double value1, Double value2) {
            addCriterion("codcr_out between", value1, value2, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andCodcrOutNotBetween(Double value1, Double value2) {
            addCriterion("codcr_out not between", value1, value2, "codcrOut");
            return (Criteria) this;
        }

        public Criteria andSsWasteIsNull() {
            addCriterion("ss_waste is null");
            return (Criteria) this;
        }

        public Criteria andSsWasteIsNotNull() {
            addCriterion("ss_waste is not null");
            return (Criteria) this;
        }

        public Criteria andSsWasteEqualTo(Double value) {
            addCriterion("ss_waste =", value, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteNotEqualTo(Double value) {
            addCriterion("ss_waste <>", value, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteGreaterThan(Double value) {
            addCriterion("ss_waste >", value, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteGreaterThanOrEqualTo(Double value) {
            addCriterion("ss_waste >=", value, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteLessThan(Double value) {
            addCriterion("ss_waste <", value, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteLessThanOrEqualTo(Double value) {
            addCriterion("ss_waste <=", value, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteIn(List<Double> values) {
            addCriterion("ss_waste in", values, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteNotIn(List<Double> values) {
            addCriterion("ss_waste not in", values, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteBetween(Double value1, Double value2) {
            addCriterion("ss_waste between", value1, value2, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsWasteNotBetween(Double value1, Double value2) {
            addCriterion("ss_waste not between", value1, value2, "ssWaste");
            return (Criteria) this;
        }

        public Criteria andSsSewageIsNull() {
            addCriterion("ss_sewage is null");
            return (Criteria) this;
        }

        public Criteria andSsSewageIsNotNull() {
            addCriterion("ss_sewage is not null");
            return (Criteria) this;
        }

        public Criteria andSsSewageEqualTo(Double value) {
            addCriterion("ss_sewage =", value, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageNotEqualTo(Double value) {
            addCriterion("ss_sewage <>", value, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageGreaterThan(Double value) {
            addCriterion("ss_sewage >", value, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageGreaterThanOrEqualTo(Double value) {
            addCriterion("ss_sewage >=", value, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageLessThan(Double value) {
            addCriterion("ss_sewage <", value, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageLessThanOrEqualTo(Double value) {
            addCriterion("ss_sewage <=", value, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageIn(List<Double> values) {
            addCriterion("ss_sewage in", values, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageNotIn(List<Double> values) {
            addCriterion("ss_sewage not in", values, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageBetween(Double value1, Double value2) {
            addCriterion("ss_sewage between", value1, value2, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsSewageNotBetween(Double value1, Double value2) {
            addCriterion("ss_sewage not between", value1, value2, "ssSewage");
            return (Criteria) this;
        }

        public Criteria andSsOutIsNull() {
            addCriterion("ss_out is null");
            return (Criteria) this;
        }

        public Criteria andSsOutIsNotNull() {
            addCriterion("ss_out is not null");
            return (Criteria) this;
        }

        public Criteria andSsOutEqualTo(Double value) {
            addCriterion("ss_out =", value, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutNotEqualTo(Double value) {
            addCriterion("ss_out <>", value, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutGreaterThan(Double value) {
            addCriterion("ss_out >", value, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutGreaterThanOrEqualTo(Double value) {
            addCriterion("ss_out >=", value, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutLessThan(Double value) {
            addCriterion("ss_out <", value, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutLessThanOrEqualTo(Double value) {
            addCriterion("ss_out <=", value, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutIn(List<Double> values) {
            addCriterion("ss_out in", values, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutNotIn(List<Double> values) {
            addCriterion("ss_out not in", values, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutBetween(Double value1, Double value2) {
            addCriterion("ss_out between", value1, value2, "ssOut");
            return (Criteria) this;
        }

        public Criteria andSsOutNotBetween(Double value1, Double value2) {
            addCriterion("ss_out not between", value1, value2, "ssOut");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeIsNull() {
            addCriterion("codcr_analyze is null");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeIsNotNull() {
            addCriterion("codcr_analyze is not null");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeEqualTo(Double value) {
            addCriterion("codcr_analyze =", value, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeNotEqualTo(Double value) {
            addCriterion("codcr_analyze <>", value, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeGreaterThan(Double value) {
            addCriterion("codcr_analyze >", value, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeGreaterThanOrEqualTo(Double value) {
            addCriterion("codcr_analyze >=", value, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeLessThan(Double value) {
            addCriterion("codcr_analyze <", value, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeLessThanOrEqualTo(Double value) {
            addCriterion("codcr_analyze <=", value, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeIn(List<Double> values) {
            addCriterion("codcr_analyze in", values, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeNotIn(List<Double> values) {
            addCriterion("codcr_analyze not in", values, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeBetween(Double value1, Double value2) {
            addCriterion("codcr_analyze between", value1, value2, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andCodcrAnalyzeNotBetween(Double value1, Double value2) {
            addCriterion("codcr_analyze not between", value1, value2, "codcrAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeIsNull() {
            addCriterion("ss_analyze is null");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeIsNotNull() {
            addCriterion("ss_analyze is not null");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeEqualTo(Double value) {
            addCriterion("ss_analyze =", value, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeNotEqualTo(Double value) {
            addCriterion("ss_analyze <>", value, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeGreaterThan(Double value) {
            addCriterion("ss_analyze >", value, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeGreaterThanOrEqualTo(Double value) {
            addCriterion("ss_analyze >=", value, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeLessThan(Double value) {
            addCriterion("ss_analyze <", value, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeLessThanOrEqualTo(Double value) {
            addCriterion("ss_analyze <=", value, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeIn(List<Double> values) {
            addCriterion("ss_analyze in", values, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeNotIn(List<Double> values) {
            addCriterion("ss_analyze not in", values, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeBetween(Double value1, Double value2) {
            addCriterion("ss_analyze between", value1, value2, "ssAnalyze");
            return (Criteria) this;
        }

        public Criteria andSsAnalyzeNotBetween(Double value1, Double value2) {
            addCriterion("ss_analyze not between", value1, value2, "ssAnalyze");
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

        public Criteria andDelFlagIsNull() {
            addCriterion("del_flag is null");
            return (Criteria) this;
        }

        public Criteria andDelFlagIsNotNull() {
            addCriterion("del_flag is not null");
            return (Criteria) this;
        }

        public Criteria andDelFlagEqualTo(String value) {
            addCriterion("del_flag =", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotEqualTo(String value) {
            addCriterion("del_flag <>", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagGreaterThan(String value) {
            addCriterion("del_flag >", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagGreaterThanOrEqualTo(String value) {
            addCriterion("del_flag >=", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLessThan(String value) {
            addCriterion("del_flag <", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLessThanOrEqualTo(String value) {
            addCriterion("del_flag <=", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagLike(String value) {
            addCriterion("del_flag like", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotLike(String value) {
            addCriterion("del_flag not like", value, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagIn(List<String> values) {
            addCriterion("del_flag in", values, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotIn(List<String> values) {
            addCriterion("del_flag not in", values, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagBetween(String value1, String value2) {
            addCriterion("del_flag between", value1, value2, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDelFlagNotBetween(String value1, String value2) {
            addCriterion("del_flag not between", value1, value2, "delFlag");
            return (Criteria) this;
        }

        public Criteria andDatetimeIsNull() {
            addCriterion("dateTime is null");
            return (Criteria) this;
        }

        public Criteria andDatetimeIsNotNull() {
            addCriterion("dateTime is not null");
            return (Criteria) this;
        }

        public Criteria andDatetimeEqualTo(Date value) {
            addCriterion("dateTime =", value, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeNotEqualTo(Date value) {
            addCriterion("dateTime <>", value, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeGreaterThan(Date value) {
            addCriterion("dateTime >", value, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("dateTime >=", value, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeLessThan(Date value) {
            addCriterion("dateTime <", value, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeLessThanOrEqualTo(Date value) {
            addCriterion("dateTime <=", value, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeIn(List<Date> values) {
            addCriterion("dateTime in", values, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeNotIn(List<Date> values) {
            addCriterion("dateTime not in", values, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeBetween(Date value1, Date value2) {
            addCriterion("dateTime between", value1, value2, "datetime");
            return (Criteria) this;
        }

        public Criteria andDatetimeNotBetween(Date value1, Date value2) {
            addCriterion("dateTime not between", value1, value2, "datetime");
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