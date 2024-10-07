.class public final enum Landroidx/test/services/storage/file/PropertyFile$Column;
.super Ljava/lang/Enum;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/PropertyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/PropertyFile$Column;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/PropertyFile$Column;

.field public static final enum NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

.field public static final enum VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;


# instance fields
.field private final columnName:Ljava/lang/String;

.field private final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Landroidx/test/services/storage/file/PropertyFile$Column;

    const/4 v1, 0x0

    const-string v2, "name"

    const-string v3, "NAME"

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/test/services/storage/file/PropertyFile$Column;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 38
    new-instance v0, Landroidx/test/services/storage/file/PropertyFile$Column;

    const/4 v1, 0x1

    const-string/jumbo v2, "value"

    const-string v3, "VALUE"

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/test/services/storage/file/PropertyFile$Column;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 36
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

    sget-object v1, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    filled-new-array {v0, v1}, [Landroidx/test/services/storage/file/PropertyFile$Column;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->$VALUES:[Landroidx/test/services/storage/file/PropertyFile$Column;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "columnName",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    invoke-static {p3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->columnName:Ljava/lang/String;

    .line 45
    iput p4, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->position:I

    .line 46
    return-void
.end method

.method public static getNames()[Ljava/lang/String;
    .locals 4

    .line 57
    invoke-static {}, Landroidx/test/services/storage/file/PropertyFile$Column;->values()[Landroidx/test/services/storage/file/PropertyFile$Column;

    move-result-object v0

    .line 58
    .local v0, "columns":[Landroidx/test/services/storage/file/PropertyFile$Column;
    invoke-static {}, Landroidx/test/services/storage/file/PropertyFile$Column;->values()[Landroidx/test/services/storage/file/PropertyFile$Column;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 59
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 60
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/test/services/storage/file/PropertyFile$Column;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/PropertyFile$Column;
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

    .line 36
    const-class v0, Landroidx/test/services/storage/file/PropertyFile$Column;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/services/storage/file/PropertyFile$Column;

    return-object v0
.end method

.method public static values()[Landroidx/test/services/storage/file/PropertyFile$Column;
    .locals 1

    .line 36
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Column;->$VALUES:[Landroidx/test/services/storage/file/PropertyFile$Column;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/PropertyFile$Column;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/PropertyFile$Column;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 53
    iget v0, p0, Landroidx/test/services/storage/file/PropertyFile$Column;->position:I

    return v0
.end method
