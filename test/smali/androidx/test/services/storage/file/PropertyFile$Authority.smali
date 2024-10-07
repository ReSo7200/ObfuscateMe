.class public final enum Landroidx/test/services/storage/file/PropertyFile$Authority;
.super Ljava/lang/Enum;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/PropertyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Authority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/PropertyFile$Authority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/PropertyFile$Authority;

.field public static final enum TEST_ARGS:Landroidx/test/services/storage/file/PropertyFile$Authority;


# instance fields
.field private final authority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Landroidx/test/services/storage/file/PropertyFile$Authority;

    const/4 v1, 0x0

    const-string v2, "androidx.test.services.storage.testargs"

    const-string v3, "TEST_ARGS"

    invoke-direct {v0, v3, v1, v2}, Landroidx/test/services/storage/file/PropertyFile$Authority;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Authority;->TEST_ARGS:Landroidx/test/services/storage/file/PropertyFile$Authority;

    .line 67
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Authority;->TEST_ARGS:Landroidx/test/services/storage/file/PropertyFile$Authority;

    filled-new-array {v0}, [Landroidx/test/services/storage/file/PropertyFile$Authority;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/PropertyFile$Authority;->$VALUES:[Landroidx/test/services/storage/file/PropertyFile$Authority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "authority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    invoke-static {p3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/PropertyFile$Authority;->authority:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/PropertyFile$Authority;
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

    .line 67
    const-class v0, Landroidx/test/services/storage/file/PropertyFile$Authority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/services/storage/file/PropertyFile$Authority;

    return-object v0
.end method

.method public static values()[Landroidx/test/services/storage/file/PropertyFile$Authority;
    .locals 1

    .line 67
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Authority;->$VALUES:[Landroidx/test/services/storage/file/PropertyFile$Authority;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/PropertyFile$Authority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/PropertyFile$Authority;

    return-object v0
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/test/services/storage/file/PropertyFile$Authority;->authority:Ljava/lang/String;

    return-object v0
.end method
