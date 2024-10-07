.class public final enum Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
.super Ljava/lang/Enum;
.source "HostedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/HostedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HostedFileColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

.field public static final enum TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;


# instance fields
.field private final androidType:I

.field private final columnName:Ljava/lang/String;

.field private final columnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 46
    new-instance v7, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-string v1, "NAME"

    const/4 v2, 0x0

    const-string v3, "name"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v7, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 47
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x3

    const/4 v14, 0x1

    const-string v9, "TYPE"

    const/4 v10, 0x1

    const-string/jumbo v11, "type"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 48
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v5, Ljava/lang/Long;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v2, "SIZE"

    const/4 v3, 0x2

    const-string/jumbo v4, "size"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 49
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v12, [Ljava/lang/Byte;

    const/4 v13, 0x4

    const/4 v14, 0x3

    const-string v9, "DATA"

    const/4 v10, 0x3

    const-string v11, "_data"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 50
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x4

    const-string v2, "DISPLAY_NAME"

    const/4 v3, 0x4

    const-string v4, "_display_name"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 51
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    const-class v12, Ljava/lang/Long;

    const/4 v13, 0x2

    const/4 v14, 0x5

    const-string v9, "SIZE_2"

    const/4 v10, 0x5

    const-string v11, "_size"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    .line 45
    sget-object v1, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    sget-object v2, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->TYPE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    sget-object v3, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    sget-object v4, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DATA:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    sget-object v5, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->DISPLAY_NAME:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    sget-object v6, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->SIZE_2:Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    filled-new-array/range {v1 .. v6}, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;II)V
    .locals 0
    .param p3, "columnName"    # Ljava/lang/String;
    .param p5, "androidType"    # I
    .param p6, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "columnName",
            "columnType",
            "androidType",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 59
    .local p4, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    invoke-static {p3}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnName:Ljava/lang/String;

    .line 61
    invoke-static {p4}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnType:Ljava/lang/Class;

    .line 62
    iput p5, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->androidType:I

    .line 63
    iput p6, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->position:I

    .line 64
    return-void
.end method

.method public static getColumnNames()[Ljava/lang/String;
    .locals 4

    .line 83
    invoke-static {}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    move-result-object v0

    .line 84
    .local v0, "columns":[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 85
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 86
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->getColumnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 45
    const-class v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    return-object v0
.end method

.method public static values()[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;
    .locals 1

    .line 45
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;

    return-object v0
.end method


# virtual methods
.method public getAndroidType()I
    .locals 1

    .line 75
    iget v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->androidType:I

    return v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->columnType:Ljava/lang/Class;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 79
    iget v0, p0, Landroidx/test/services/storage/file/HostedFile$HostedFileColumn;->position:I

    return v0
.end method
