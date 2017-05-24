declare var Object: any;
export interface FormPostInterface {
    ThanhVien: any;
    id?: any;
}

export class FormPost implements FormPostInterface {
    public ThanhVien: any;
    public id?: any;
    constructor(data?: FormPostInterface) {

    }
    public static getModelName() {
        return "FormPost";
    }
    public static factory(data: FormPostInterface): FormPost {
        return new FormPost(data);
    }
      public static getModelDefinition() {
    return {
      name: 'FormPost',
      plural: 'Values',
      properties: {
        ThanhVien: {
          name: 'ThanhVien',
          type: 'any'
        },
        id: {
          name: 'id',
          type: 'any'
        },
      },
    }
  }
}