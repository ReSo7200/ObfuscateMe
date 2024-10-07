.class public Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;
.super Ljava/lang/Object;
.source "ActivityLifecycleTimeout.java"


# static fields
.field private static final ACTIVITY_LIFECYCLE_CHANGE_TIMEOUT_MILLIS_KEY:Ljava/lang/String; = "activityLifecycleChangeTimeoutMillis"

.field private static final DEFAULT_ACTIVITY_LIFECYCLE_CHANGE_TIMEOUT_MILLIS:I = 0xafc8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMillis()J
    .locals 3

    .line 29
    const-string v0, "activityLifecycleChangeTimeoutMillis"

    const-wide/32 v1, 0xafc8

    invoke-static {v0, v1, v2}, Landroidx/test/internal/platform/util/InstrumentationParameterUtil;->getTimeoutMillis(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
