.class public final Landroidx/tracing/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Trace"

.field private static sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

.field private static sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

.field private static sHasAppTracingEnabled:Z

.field private static sIsTagEnabledMethod:Ljava/lang/reflect/Method;

.field private static sTraceCounterMethod:Ljava/lang/reflect/Method;

.field private static sTraceTagApp:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static beginAsyncSection(Ljava/lang/String;I)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 178
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->beginAsyncSection(Ljava/lang/String;I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->beginAsyncSectionFallback(Ljava/lang/String;I)V

    .line 182
    :goto_0
    return-void
.end method

.method private static beginAsyncSectionFallback(Ljava/lang/String;I)V
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 238
    const-string v0, "asyncTraceBegin"

    .line 240
    :try_start_0
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 241
    const-class v1, Landroid/os/Trace;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    .line 247
    :cond_0
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceBeginMethod:Ljava/lang/reflect/Method;

    sget-wide v2, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p0, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "exception":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 252
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 0
    .param p0, "label"    # Ljava/lang/String;

    .line 128
    nop

    .line 129
    invoke-static {p0}, Landroidx/tracing/TraceApi18Impl;->beginSection(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static endAsyncSection(Ljava/lang/String;I)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 197
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->endAsyncSection(Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->endAsyncSectionFallback(Ljava/lang/String;I)V

    .line 201
    :goto_0
    return-void
.end method

.method private static endAsyncSectionFallback(Ljava/lang/String;I)V
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 256
    const-string v0, "asyncTraceEnd"

    .line 258
    :try_start_0
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 259
    const-class v1, Landroid/os/Trace;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 265
    :cond_0
    sget-object v1, Landroidx/tracing/Trace;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    sget-wide v2, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p0, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "exception":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 270
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 142
    nop

    .line 143
    invoke-static {}, Landroidx/tracing/TraceApi18Impl;->endSection()V

    .line 145
    return-void
.end method

.method public static forceEnableAppTracing()V
    .locals 6

    .line 98
    const-string/jumbo v0, "setAppTracingAllowed"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_1

    .line 100
    :try_start_0
    sget-boolean v1, Landroidx/tracing/Trace;->sHasAppTracingEnabled:Z

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/tracing/Trace;->sHasAppTracingEnabled:Z

    .line 103
    const-class v2, Landroid/os/Trace;

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    .local v2, "setAppTracingAllowed":Ljava/lang/reflect/Method;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "setAppTracingAllowed":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "exception":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private static handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 292
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 294
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 295
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 297
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 300
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " via reflection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trace"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    return-void
.end method

.method public static isEnabled()Z
    .locals 2

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 78
    invoke-static {}, Landroidx/tracing/TraceApi29Impl;->isEnabled()Z

    move-result v0

    return v0

    .line 80
    :cond_0
    invoke-static {}, Landroidx/tracing/Trace;->isEnabledFallback()Z

    move-result v0

    return v0
.end method

.method private static isEnabledFallback()Z
    .locals 7

    .line 219
    const-string v0, "isTagEnabled"

    .line 221
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 222
    const-class v2, Landroid/os/Trace;

    const-string v4, "TRACE_TAG_APP"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 223
    .local v2, "traceTagAppField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    sput-wide v4, Landroidx/tracing/Trace;->sTraceTagApp:J

    .line 224
    const-class v4, Landroid/os/Trace;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 225
    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    .line 227
    .end local v2    # "traceTagAppField":Ljava/lang/reflect/Field;
    :cond_0
    sget-object v2, Landroidx/tracing/Trace;->sIsTagEnabledMethod:Ljava/lang/reflect/Method;

    sget-wide v4, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "exception":Ljava/lang/Exception;
    invoke-static {v0, v2}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 233
    .end local v2    # "exception":Ljava/lang/Exception;
    return v1
.end method

.method public static setCounter(Ljava/lang/String;I)V
    .locals 2
    .param p0, "counterName"    # Ljava/lang/String;
    .param p1, "counterValue"    # I

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 211
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->setCounter(Ljava/lang/String;I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p0, p1}, Landroidx/tracing/Trace;->setCounterFallback(Ljava/lang/String;I)V

    .line 215
    :goto_0
    return-void
.end method

.method private static setCounterFallback(Ljava/lang/String;I)V
    .locals 5
    .param p0, "counterName"    # Ljava/lang/String;
    .param p1, "counterValue"    # I

    .line 274
    const-string/jumbo v0, "traceCounter"

    .line 276
    :try_start_0
    sget-object v1, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 277
    const-class v1, Landroid/os/Trace;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    .line 284
    :cond_0
    sget-object v1, Landroidx/tracing/Trace;->sTraceCounterMethod:Ljava/lang/reflect/Method;

    sget-wide v2, Landroidx/tracing/Trace;->sTraceTagApp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p0, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "exception":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroidx/tracing/Trace;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 289
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
