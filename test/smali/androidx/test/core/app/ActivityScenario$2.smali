.class synthetic Landroidx/test/core/app/ActivityScenario$2;
.super Ljava/lang/Object;
.source "ActivityScenario.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/ActivityScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$State:[I

.field static final synthetic $SwitchMap$androidx$test$runner$lifecycle$Stage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 668
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    :try_start_2
    sget-object v2, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    :try_start_3
    sget-object v2, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 487
    :goto_3
    invoke-static {}, Landroidx/test/runner/lifecycle/Stage;->values()[Landroidx/test/runner/lifecycle/Stage;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$test$runner$lifecycle$Stage:[I

    :try_start_4
    sget-object v2, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$test$runner$lifecycle$Stage:[I

    sget-object v3, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v3}, Landroidx/test/runner/lifecycle/Stage;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$test$runner$lifecycle$Stage:[I

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v2}, Landroidx/test/runner/lifecycle/Stage;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
