<template>
  <div class="q-gutter-y-lg">
    <q-btn flat round icon="arrow_back" dense @click="cancel"></q-btn>
    <q-card class="tdf-box-shadow">
      <div class="tdf-title-body">
        <div class="q-ml-lg">用户组信息</div>
        <q-space></q-space>
        <q-btn
          class="q-mr-lg"
          color="primary"
          unelevated
          :size="$btnSize"
          @click="save"
        >
          保存
        </q-btn>
      </div>
      <q-separator></q-separator>
      <q-card-section>
        <q-form
          ref="myForm"
          :model="form"
          class="row justify-center q-gutter-y-md q-pb-md"
        >
          <div class="col-12">
            <div class="row">
              <form-lable requst lable="学生班级"></form-lable>
              <q-tree
                class="col-5"
                ref="tree"
                :nodes="treeItems"
                label-key="gradeName"
                node-key="id"
                selected-color="primary"
                :selected.sync="selected"
              ></q-tree>
            </div>
          </div>

          <div class="col-12">
            <div class="row">
              <form-lable requst lable="学生姓名"></form-lable>
              <q-input
                class="col"
                v-model="detail.studentName"
                :rules="[val => !!val || '请输入分组名称']"
                hide-bottom-space
                outlined
                dense
                clearable
              ></q-input>
            </div>
          </div>
        </q-form>
      </q-card-section>
    </q-card>
  </div>
</template>

<script>
import BaseEditForm from "@/tdf/views/common/mixins/BaseEditForm";
import BaseTable from "@componets/basetable/BaseTable";
import FormLable from "@componets/formlable/FormLable";
import * as GradeAPI from "@/demo/api/classGrade";

export default {
  name: "Details",
  mixins: [BaseEditForm],
  components: { FormLable, BaseTable },
  data() {
    return {
      selected: "",
      treeItems: [],
      detail: {},
      form: {
        id: null,
        groupName: "",
        state: "1",
        flag: 1,
        groupIndex: null,
        remark: ""
      },
      selection: "none",
      isVisibleColumns: [
        "studentName",
        "studentClass",
        "studentSex",
        "actions"
      ],
      columns: [
        {
          name: "studentName",
          field: "studentName",
          label: "学生姓名",
          align: "left",
          headerStyle: ""
        },
        {
          name: "studentClass",
          field: "studentClass",
          label: "学生班级",
          align: "left",
          headerStyle: ""
        },
        {
          name: "studentSex",
          field: "studentSex",
          label: "学生性别",
          align: "left",
          headerStyle: "width: 120px;"
        },
        {
          name: "actions",
          field: "actions",
          label: "操作",
          align: "center",
          headerStyle: "width: 100px;"
        }
      ],
      users: []
    };
  },
  created() {
    this.queryAllTreeHandler();
  },
  methods: {
    queryAllTreeHandler() {
      GradeAPI.queryAllClassGrades({}).then(data => {
        this.treeItems = data;
      });
    },
    setData(data) {
      console.log(data);
      this.detail = data;
      this.selected = data.classId;
    },
    save() {
      this.$refs.myForm.validate().then(success => {
        if (success) {
          this.detail.classId = this.selected;
          this.detail.studentClass = this.$refs.tree.getNodeByKey(
            this.selected
          ).gradeName;
          this.$emit("editSave", this.detail);
        } else {
          //
        }
      });
    },
    cancel() {
      this.$emit("editCancel");
    }
  }
};
</script>
