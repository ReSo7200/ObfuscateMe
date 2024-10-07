.class public final enum Landroidx/test/services/storage/file/HostedFile$FileHost;
.super Ljava/lang/Enum;
.source "HostedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/services/storage/file/HostedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileHost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/services/storage/file/HostedFile$FileHost;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

.field public static final enum TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;


# instance fields
.field private final authority:Ljava/lang/String;

.field private final writeable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 118
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const/4 v1, 0x0

    const-string v2, "androidx.test.services.storage.runfiles"

    const-string v3, "TEST_FILE"

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 119
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const-string v1, "androidx.test.services.storage.properties"

    const-string v2, "EXPORT_PROPERTIES"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1, v3}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 120
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const/4 v1, 0x2

    const-string v2, "androidx.test.services.storage.outputfiles"

    const-string v4, "OUTPUT"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 121
    new-instance v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    const/4 v1, 0x3

    const-string v2, "androidx.test.services.storage._internal_use_files"

    const-string v4, "INTERNAL_USE_ONLY"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/test/services/storage/file/HostedFile$FileHost;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 117
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;

    sget-object v1, Landroidx/test/services/storage/file/HostedFile$FileHost;->EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

    sget-object v2, Landroidx/test/services/storage/file/HostedFile$FileHost;->OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

    sget-object v3, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/test/services/storage/file/HostedFile$FileHost;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileHost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "writeable"    # Z
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
            "authority",
            "writeable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    invoke-static {p3}, Landroidx/test/services/storage/file/HostedFile;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->authority:Ljava/lang/String;

    .line 128
    iput-boolean p4, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->writeable:Z

    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/services/storage/file/HostedFile$FileHost;
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

    .line 117
    const-class v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/services/storage/file/HostedFile$FileHost;

    return-object v0
.end method

.method public static values()[Landroidx/test/services/storage/file/HostedFile$FileHost;
    .locals 1

    .line 117
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->$VALUES:[Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-virtual {v0}, [Landroidx/test/services/storage/file/HostedFile$FileHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/services/storage/file/HostedFile$FileHost;

    return-object v0
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public isWritable()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Landroidx/test/services/storage/file/HostedFile$FileHost;->writeable:Z

    return v0
.end method
