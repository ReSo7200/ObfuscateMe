.class public Lcom/chacha/igexperiments/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final CURRENT_VERSION:Ljava/lang/String; = "3.0"

.field private static final VERSION_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/ReSo7200/IGExperimentsHooksUpdates/refs/heads/main/version.json"


# instance fields
.field private btnDonate:Landroid/widget/ImageButton;

.field private btnDownload:Landroid/widget/Button;

.field private btnGithub:Landroid/widget/ImageButton;

.field private btnHook:Landroid/widget/Button;

.field private btnKill:Landroid/widget/Button;

.field private customClassName:Landroid/widget/EditText;

.field private customMethodName:Landroid/widget/EditText;

.field private customSecondClassName:Landroid/widget/EditText;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private howtotext:Landroid/widget/TextView;

.field private iGVersionsInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chacha/igexperiments/InfoIGVersion;",
            ">;"
        }
    .end annotation
.end field

.field private igVersionsSpinner:Landroid/widget/Spinner;

.field private infoHooktext:Landroid/widget/TextView;

.field private layoutHeckerMode:Landroid/widget/LinearLayout;

.field private layoutSwitch:Landroid/widget/LinearLayout;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private switchModeBtn:Landroid/widget/Button;

.field private textHookedClass:Landroid/widget/TextView;

.field private textViewError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/chacha/igexperiments/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chacha/igexperiments/MainActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/chacha/igexperiments/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chacha/igexperiments/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/chacha/igexperiments/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chacha/igexperiments/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/chacha/igexperiments/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkForUpdate()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 352
    return-void
.end method

.method private disableView()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customClassName:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customMethodName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->btnHook:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->btnKill:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    return-void
.end method

.method private fetchVersionData()Ljava/lang/String;
    .locals 8

    .line 356
    const-string v0, "VersionCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v1, "result":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "https://raw.githubusercontent.com/ReSo7200/IGExperimentsHooksUpdates/refs/heads/main/version.json"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 359
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 360
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 362
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 364
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 365
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetched JSON: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 371
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error fetching version data"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIGVersionsInfos()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/chacha/igexperiments/InfoIGVersion;",
            ">;"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/chacha/igexperiments/InfoIGVersion;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/chacha/igexperiments/MainActivity;->getJSONContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "ig_versions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 474
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 475
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 476
    .local v4, "infoVersions":Lorg/json/JSONObject;
    new-instance v11, Lcom/chacha/igexperiments/InfoIGVersion;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "class_to_hook"

    .line 477
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "method_to_hook"

    .line 478
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "second_class_to_hook"

    .line 479
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "download"

    .line 480
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/chacha/igexperiments/InfoIGVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    nop

    .end local v4    # "infoVersions":Lorg/json/JSONObject;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "IGEXPERIMENTS"

    const-string v3, "Error while parsing JSON"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 486
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method private static getJSONContent()Ljava/lang/String;
    .locals 5

    .line 450
    :try_start_0
    const-string v0, "IGexperiments"

    const-string v1, "Reading raw content from github file"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://raw.githubusercontent.com/ReSo7200/IGExperimentsUpdates/master/hooks.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "url":Ljava/net/URL;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 453
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 454
    new-instance v2, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 455
    .local v2, "s":Ljava/util/Scanner;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v3, "content":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 460
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "s":Ljava/util/Scanner;
    .end local v3    # "content":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private initIGVersionsInfos()V
    .locals 1

    .line 286
    invoke-static {}, Lcom/chacha/igexperiments/MainActivity;->getIGVersionsInfos()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->iGVersionsInfos:Ljava/util/ArrayList;

    .line 287
    return-void
.end method

.method private initIGVersionsSpinner()V
    .locals 3

    .line 139
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->iGVersionsInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 141
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/chacha/igexperiments/InfoIGVersion;>;"
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->isErrorDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->textViewError:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_0
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 144
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 145
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->setIGItemPosition()V

    .line 146
    return-void
.end method

.method private initViews()V
    .locals 1

    .line 110
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customClassName:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customMethodName:Landroid/widget/EditText;

    .line 112
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customSecondClassName:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0901d2

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    .line 115
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->btnHook:Landroid/widget/Button;

    .line 116
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    .line 117
    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->btnDownload:Landroid/widget/Button;

    .line 119
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->btnKill:Landroid/widget/Button;

    .line 120
    const v0, 0x7f0901d3

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textViewError:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->btnDonate:Landroid/widget/ImageButton;

    .line 122
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->btnGithub:Landroid/widget/ImageButton;

    .line 123
    const v0, 0x7f0901d1

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->infoHooktext:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->howtotext:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0900fc

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->layoutSwitch:Landroid/widget/LinearLayout;

    .line 126
    return-void
.end method

.method private initViewsFunctions()V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customClassName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "className"

    const-string v3, "X.1XX"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customMethodName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "methodName"

    const-string v3, "A00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->customSecondClassName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondClassName"

    const-string v3, "com.instagram.common.session.UserSession"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    const-string v4, "Hecker"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "Auto"

    aput-object v4, v0, v3

    .line 159
    .local v0, "modes":[Ljava/lang/String;
    const v3, 0x7f10003d

    const v4, 0x7f10001f

    const v5, 0x7f1000a9

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    .line 162
    .local v3, "modeTextResources":[I
    iget-object v4, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "Mode"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "currentMode":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    filled-new-array {v4}, [I

    move-result-object v4

    .line 164
    .local v4, "currentModeIndex":[I
    aget v5, v4, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 165
    aput v1, v4, v1

    .line 168
    :cond_0
    iget-object v5, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    aget v1, v4, v1

    aget v1, v3, v1

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v4, v0, v3}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/chacha/igexperiments/MainActivity;[I[Ljava/lang/String;[I)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->btnHook:Landroid/widget/Button;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/chacha/igexperiments/MainActivity$1;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 259
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->btnDownload:Landroid/widget/Button;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-static {}, Lcom/chacha/igexperiments/MainActivity;->isRoot()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->btnKill:Landroid/widget/Button;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->btnKill:Landroid/widget/Button;

    const-string v5, "Use LSPatch to enable the module on Instagram"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->btnKill:Landroid/widget/Button;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->btnDonate:Landroid/widget/ImageButton;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->btnGithub:Landroid/widget/ImageButton;

    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/chacha/igexperiments/MainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-void
.end method

.method private initViewsPreferences()V
    .locals 7

    .line 66
    invoke-static {p0}, Lcom/chacha/igexperiments/Preferences;->loadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    invoke-static {}, Lcom/chacha/igexperiments/Preferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Mode"

    const-string v2, "Normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "useMode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "Hecker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/16 v2, 0x8

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 83
    :pswitch_1
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    goto :goto_2

    .line 75
    :pswitch_2
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    nop

    .line 101
    :goto_2
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 102
    const-string v4, "className"

    const-string v5, "X.1XX"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 103
    const-string v5, "methodName"

    const-string v6, "A00"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 101
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f652e4e -> :sswitch_2
        -0x749456f9 -> :sswitch_1
        0x1f51cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isErrorDetected()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->iGVersionsInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isModuleActive()Z
    .locals 1

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method private isNewVersionAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "latestVersion"    # Ljava/lang/String;

    .line 379
    const-string v0, "3.0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRoot()Ljava/lang/Boolean;
    .locals 1

    .line 290
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->available()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private killAction()V
    .locals 3

    .line 426
    invoke-static {}, Lcom/chacha/igexperiments/MainActivity;->isRoot()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 429
    .local v0, "su":Ljava/lang/Process;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 430
    .local v1, "os":Ljava/io/DataOutputStream;
    const-string v2, "adb shell\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 432
    const-string v2, "am force-stop com.instagram.android\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 434
    const-string v2, "am start -n com.instagram.android/com.instagram.mainactivity.InstagramMainActivity\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "su":Ljava/lang/Process;
    .end local v1    # "os":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 440
    :cond_0
    const-string v0, "Root not granted !"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 441
    const-string v0, "Stop the app manually!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 443
    :goto_1
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 418
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 419
    return-void
.end method

.method private setIGItemPosition()V
    .locals 5

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->iGVersionsInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->iGVersionsInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v1}, Lcom/chacha/igexperiments/InfoIGVersion;->getClassToHook()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "className"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 493
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private showUpdateDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "updateUrl"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;

    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    const-string v1, "New Version Available"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A new version of the module is available. Would you like to update?\nNew Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/chacha/igexperiments/MainActivity;Ljava/lang/String;)V

    .line 387
    const-string v2, "Update"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 392
    const-string v1, "Later"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 394
    return-void
.end method


# virtual methods
.method synthetic lambda$checkForUpdate$7$com-chacha-igexperiments-MainActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "updateUrl"    # Ljava/lang/String;
    .param p2, "latestVersion"    # Ljava/lang/String;

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/chacha/igexperiments/MainActivity;->showUpdateDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$checkForUpdate$8$com-chacha-igexperiments-MainActivity()V
    .locals 7

    .line 331
    const-string v0, "VersionCheck"

    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->fetchVersionData()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "versionData":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 336
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "latestVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "latestVersion":Ljava/lang/String;
    const-string v4, "updateUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "updateUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Latest version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, v3}, Lcom/chacha/igexperiments/MainActivity;->isNewVersionAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    new-instance v5, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v4, v3}, Lcom/chacha/igexperiments/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/chacha/igexperiments/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/chacha/igexperiments/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "latestVersion":Ljava/lang/String;
    .end local v4    # "updateUrl":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error parsing JSON"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$initViewsFunctions$0$com-chacha-igexperiments-MainActivity([I[Ljava/lang/String;[ILandroid/view/View;)V
    .locals 9
    .param p1, "currentModeIndex"    # [I
    .param p2, "modes"    # [Ljava/lang/String;
    .param p3, "modeTextResources"    # [I
    .param p4, "v"    # Landroid/view/View;

    .line 175
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p2

    rem-int/2addr v1, v3

    aput v1, p1, v0

    .line 177
    aget v1, p1, v0

    aget-object v1, p2, v1

    .line 180
    .local v1, "selectedMode":Ljava/lang/String;
    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->switchModeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p1, v0

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "Mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "Auto"

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "Normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v2, "Hecker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x8

    const-string v5, "secondClassName"

    const-string v6, "methodName"

    const-string v7, "className"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 198
    :pswitch_1
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v8}, Lcom/chacha/igexperiments/InfoIGVersion;->getClassToHook()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v8}, Lcom/chacha/igexperiments/InfoIGVersion;->getMethodToHook()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v8, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v8}, Lcom/chacha/igexperiments/InfoIGVersion;->getSecondClassToHook()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    goto :goto_2

    .line 188
    :pswitch_2
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->customClassName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->customMethodName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->customSecondClassName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    nop

    .line 218
    :goto_2
    const-string v0, "com.chacha.igexperiments"

    const-string v2, "IGExperiments"

    invoke-static {v0, v2}, Lcom/coniy/fileprefs/FileSharedPreferences;->makeWorldReadable(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 223
    const-string v4, "X.1XX"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/chacha/igexperiments/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 224
    const-string v5, "A00"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f652e4e -> :sswitch_2
        -0x749456f9 -> :sswitch_1
        0x1f51cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$initViewsFunctions$1$com-chacha-igexperiments-MainActivity(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->customClassName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->customMethodName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->customSecondClassName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secondClassName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    const-string v0, "com.chacha.igexperiments"

    const-string v1, "IGExperiments"

    invoke-static {v0, v1}, Lcom/coniy/fileprefs/FileSharedPreferences;->makeWorldReadable(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textHookedClass:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chacha/igexperiments/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chacha/igexperiments/MainActivity;->customClassName:Landroid/widget/EditText;

    .line 234
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chacha/igexperiments/MainActivity;->customMethodName:Landroid/widget/EditText;

    .line 235
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 233
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method

.method synthetic lambda$initViewsFunctions$2$com-chacha-igexperiments-MainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 260
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->isErrorDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textViewError:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chacha/igexperiments/MainActivity;->textViewError:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->igVersionsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chacha/igexperiments/InfoIGVersion;

    invoke-virtual {v0}, Lcom/chacha/igexperiments/InfoIGVersion;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->openUrl(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method synthetic lambda$initViewsFunctions$3$com-chacha-igexperiments-MainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 269
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->killAction()V

    return-void
.end method

.method synthetic lambda$initViewsFunctions$4$com-chacha-igexperiments-MainActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 273
    const-string v0, "1. Enable the module on Instagram Using LSPatch"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    const-string v0, "2. Stop the app manually!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    return-void
.end method

.method synthetic lambda$initViewsFunctions$5$com-chacha-igexperiments-MainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 278
    invoke-static {p0}, Lcom/chacha/igexperiments/Donation;->openDonationLink(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$initViewsFunctions$6$com-chacha-igexperiments-MainActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 279
    const-string v0, "https://github.com/xHookman/IGexperiments/"

    invoke-direct {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showUpdateDialog$9$com-chacha-igexperiments-MainActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "updateUrl"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 296
    const v0, 0x7f11000b

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->setTheme(I)V

    .line 297
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 298
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/MainActivity;->setContentView(I)V

    .line 300
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->initViews()V

    .line 301
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->initViewsPreferences()V

    .line 302
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->initIGVersionsInfos()V

    .line 303
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->initIGVersionsSpinner()V

    .line 304
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->initViewsFunctions()V

    .line 306
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->checkForUpdate()V

    .line 308
    invoke-static {}, Lcom/chacha/igexperiments/MainActivity;->isRoot()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chacha/igexperiments/MainActivity;->isModuleActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->disableView()V

    .line 310
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textViewError:Landroid/widget/TextView;

    const-string v1, "Module DISABLED!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textViewError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->infoHooktext:Landroid/widget/TextView;

    const-string v1, "The module isn\'t enabled, Please enable it!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {}, Lcom/chacha/igexperiments/MainActivity;->isRoot()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/chacha/igexperiments/MainActivity;->disableView()V

    .line 316
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->howtotext:Landroid/widget/TextView;

    const-string v1, "1. Download a compatible Instagram version\n2. Install it\n3. Patch Instagram using LSPatch (Local Patch Mode)\n4. Add our mod to Instagram module scope using LSPatch\n5. Force stop Instagram and Start it!!!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->textViewError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->infoHooktext:Landroid/widget/TextView;

    const-string v2, "Use supported versions\nChoose one of the supported versions and click \'Download APK\'\nSee Github page for more information."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->layoutHeckerMode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/chacha/igexperiments/MainActivity;->layoutSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    :cond_1
    :goto_0
    return-void
.end method
