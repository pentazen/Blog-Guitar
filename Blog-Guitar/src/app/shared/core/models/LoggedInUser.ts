export class LoggedInUser {
    public access_token;
    public TaiKhoan;
    public TenDayDu;
    public Email;
    public AnhDaiDien;
    public Quyen;
    constructor(access_token: string, TaiKhoan: string, TenDayDu: string, Email: string, AnhDaiDien: string, Quyen: string) {
        this.access_token = access_token;
        this.TaiKhoan = TaiKhoan;
        this.TenDayDu = TenDayDu;
        this.Email = Email;
        this.AnhDaiDien = AnhDaiDien;
        this.Quyen = Quyen;

    }

}