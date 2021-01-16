
export class TableDataResponse {
    Table: any;
    Status: string;
    IsEmpty: boolean;
    PageCount: Array<number>;
    ActivePage: number;
    public static Create(status: string = "Loading", table: any = null, skip: number = 1) {
        var result = {
            Status: status ? status : !table ? "Server Error" : table.totalCount ? "Success" : "No Data!",
            Table: table ?? { data: [] },
            PageCount: table ? Array.from({ length: parseInt(((table.totalCount / 10) - 1).toString()) }, (v, k) => k + 1) : [],
            ActivePage: skip,
            IsEmpty: table && table.data.length ? false : true
        }
        console.log(result)
        return result;
    }
}
