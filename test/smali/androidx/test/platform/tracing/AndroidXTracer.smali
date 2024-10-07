.class Landroidx/test/platform/tracing/AndroidXTracer;
.super Ljava/lang/Object;
.source "AndroidXTracer.java"

# interfaces
.implements Landroidx/test/platform/tracing/Tracer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;
    }
.end annotation


# static fields
.field private static final MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Landroidx/test/platform/tracing/AndroidXTracer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/platform/tracing/AndroidXTracer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 47
    invoke-static {p0}, Landroidx/test/platform/tracing/AndroidXTracer;->sanitizeSpanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sanitizeSpanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 110
    sget-object v0, Landroidx/test/platform/tracing/AndroidXTracer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Span name exceeds limits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_0
    return-object p0
.end method


# virtual methods
.method public beginSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Landroidx/test/platform/tracing/AndroidXTracer;->sanitizeSpanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;-><init>(Landroidx/test/platform/tracing/AndroidXTracer$1;)V

    return-object v0
.end method

.method public enableTracing()Landroidx/test/platform/tracing/AndroidXTracer;
    .locals 3

    .line 57
    :try_start_0
    invoke-static {}, Landroidx/tracing/Trace;->forceEnableAppTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v1, Landroidx/test/platform/tracing/AndroidXTracer;->TAG:Ljava/lang/String;

    const-string v2, "enableTracing failed. You may need to upgrade your androidx.tracing:tracing version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 58
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroidx/test/platform/tracing/AndroidXTracer;->TAG:Ljava/lang/String;

    const-string v2, "enableTracing failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 69
    :goto_1
    return-object p0
.end method
