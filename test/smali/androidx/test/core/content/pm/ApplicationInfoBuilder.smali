.class public final Landroidx/test/core/content/pm/ApplicationInfoBuilder;
.super Ljava/lang/Object;
.source "ApplicationInfoBuilder.java"


# instance fields
.field private flags:I

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->flags:I

    .line 29
    return-void
.end method

.method public static newBuilder()Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 1

    .line 37
    new-instance v0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    invoke-direct {v0}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 74
    iget-object v0, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    const-string v1, "Mandatory field \'packageName\' missing."

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 77
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->flags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 78
    iget-object v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 81
    return-object v0
.end method

.method public setFlags(I)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 68
    iput p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->flags:I

    .line 69
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->name:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    .line 47
    return-object p0
.end method
