.class public final Landroidx/test/core/content/pm/PackageInfoBuilder;
.super Ljava/lang/Object;
.source "PackageInfoBuilder.java"


# instance fields
.field private applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private longVersionCode:J

.field private packageName:Ljava/lang/String;

.field private final requestedPermissionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public static newBuilder()Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 1

    .line 46
    new-instance v0, Landroidx/test/core/content/pm/PackageInfoBuilder;

    invoke-direct {v0}, Landroidx/test/core/content/pm/PackageInfoBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addRequestedPermission(Ljava/lang/String;I)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 2
    .param p1, "requestedPermission"    # Ljava/lang/String;
    .param p2, "requestedPermissionFlag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestedPermission",
            "requestedPermissionFlag"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object p0
.end method

.method public build()Landroid/content/pm/PackageInfo;
    .locals 5

    .line 120
    iget-object v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    const-string v1, "Mandatory field \'packageName\' missing."

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 123
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->versionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 128
    iget-wide v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    goto :goto_0

    .line 130
    :cond_0
    iget-wide v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    long-to-int v1, v1

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 133
    :goto_0
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 134
    invoke-static {}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->newBuilder()Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->build()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 136
    :cond_1
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 137
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 139
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->requestedPermissionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 141
    .local v1, "requestedPermissionsFlags":[Ljava/lang/Integer;
    array-length v2, v1

    new-array v2, v2, [I

    .line 142
    .local v2, "requestedPermissionsFlagsIntArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 143
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "i":I
    :cond_2
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 147
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 147
    const-string v4, "Field \'packageName\' must match field \'applicationInfo.packageName\'"

    invoke-static {v3, v4}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 151
    return-object v0
.end method

.method public setApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 0
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationInfo"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 114
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/PackageInfoBuilder;
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

    .line 57
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setVersionCode(J)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 0
    .param p1, "longVersionCode"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longVersionCode"
        }
    .end annotation

    .line 75
    iput-wide p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->longVersionCode:J

    .line 76
    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionName"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->versionName:Ljava/lang/String;

    .line 88
    return-object p0
.end method
