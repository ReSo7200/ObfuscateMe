.class public Lkotlinx/coroutines/channels/BufferedChannel;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;,
        Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/Channel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3055:1\n273#1,6:3058\n280#1,68:3065\n374#1,18:3156\n244#1:3174\n269#1,10:3175\n280#1,48:3186\n395#1:3234\n334#1,14:3235\n399#1,3:3250\n244#1:3263\n269#1,10:3264\n280#1,68:3275\n244#1:3353\n269#1,10:3354\n280#1,68:3365\n244#1:3437\n269#1,10:3438\n280#1,68:3449\n886#1,52:3519\n964#1,8:3575\n858#1:3583\n882#1,33:3584\n974#1:3617\n916#1,14:3618\n935#1,3:3633\n979#1,6:3636\n886#1,52:3650\n964#1,8:3706\n858#1:3714\n882#1,33:3715\n974#1:3748\n916#1,14:3749\n935#1,3:3764\n979#1,6:3767\n858#1:3782\n882#1,48:3783\n935#1,3:3832\n858#1:3835\n882#1,48:3836\n935#1,3:3885\n244#1:3897\n269#1,10:3898\n280#1,68:3909\n858#1:3978\n882#1,48:3979\n935#1,3:4028\n1#2:3056\n3038#3:3057\n3038#3:3064\n3038#3:3185\n3038#3:3274\n3038#3:3364\n3038#3:3436\n3038#3:3448\n3038#3:3518\n3038#3:3781\n3038#3:3888\n3038#3:3889\n3052#3:3890\n3052#3:3891\n3051#3:3892\n3051#3:3893\n3051#3:3894\n3052#3:3895\n3051#3:3896\n3038#3:3908\n3039#3:4031\n3038#3:4032\n3038#3:4033\n3038#3:4034\n3039#3:4035\n3038#3:4036\n3039#3:4059\n3038#3:4060\n3038#3:4061\n3039#3:4062\n3038#3:4112\n3039#3:4113\n3039#3:4114\n3039#3:4132\n3039#3:4133\n314#4,9:3133\n323#4,2:3150\n332#4,4:3152\n336#4,8:3253\n314#4,9:3344\n323#4,2:3434\n332#4,4:3571\n336#4,8:3642\n332#4,4:3702\n336#4,8:3773\n218#5:3142\n219#5:3145\n218#5:3146\n219#5:3149\n61#6,2:3143\n61#6,2:3147\n61#6,2:3261\n269#7:3249\n269#7:3343\n269#7:3433\n269#7:3517\n269#7:3977\n882#8:3632\n882#8:3763\n882#8:3831\n882#8:3884\n882#8:4027\n37#9,11:4037\n37#9,11:4048\n72#10,3:4063\n46#10,8:4066\n72#10,3:4074\n46#10,8:4077\n46#10,8:4085\n72#10,3:4093\n46#10,8:4096\n46#10,8:4104\n766#11:4115\n857#11,2:4116\n2310#11,14:4118\n766#11:4134\n857#11,2:4135\n2310#11,14:4137\n766#11:4151\n857#11,2:4152\n2310#11,14:4154\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n113#1:3058,6\n113#1:3065,68\n154#1:3156,18\n154#1:3174\n154#1:3175,10\n154#1:3186,48\n154#1:3234\n154#1:3235,14\n154#1:3250,3\n194#1:3263\n194#1:3264,10\n194#1:3275,68\n225#1:3353\n225#1:3354,10\n225#1:3365,68\n391#1:3437\n391#1:3438,10\n391#1:3449,68\n667#1:3519,52\n696#1:3575,8\n696#1:3583\n696#1:3584,33\n696#1:3617\n696#1:3618,14\n696#1:3633,3\n696#1:3636,6\n732#1:3650,52\n748#1:3706,8\n748#1:3714\n748#1:3715,33\n748#1:3748\n748#1:3749,14\n748#1:3764,3\n748#1:3767,6\n781#1:3782\n781#1:3783,48\n781#1:3832,3\n971#1:3835\n971#1:3836,48\n971#1:3885,3\n1464#1:3897\n1464#1:3898,10\n1464#1:3909,68\n1512#1:3978\n1512#1:3979,48\n1512#1:4028,3\n70#1:3057\n113#1:3064\n154#1:3185\n194#1:3274\n225#1:3364\n278#1:3436\n391#1:3448\n606#1:3518\n771#1:3781\n1007#1:3888\n1056#1:3889\n1374#1:3890\n1376#1:3891\n1406#1:3892\n1416#1:3893\n1425#1:3894\n1426#1:3895\n1433#1:3896\n1464#1:3908\n1865#1:4031\n1867#1:4032\n1869#1:4033\n1882#1:4034\n1893#1:4035\n1894#1:4036\n2196#1:4059\n2209#1:4060\n2219#1:4061\n2222#1:4062\n2539#1:4112\n2541#1:4113\n2566#1:4114\n2628#1:4132\n2629#1:4133\n134#1:3133,9\n134#1:3150,2\n153#1:3152,4\n153#1:3253,8\n221#1:3344,9\n221#1:3434,2\n695#1:3571,4\n695#1:3642,8\n746#1:3702,4\n746#1:3773,8\n138#1:3142\n138#1:3145\n141#1:3146\n141#1:3149\n138#1:3143,2\n141#1:3147,2\n183#1:3261,2\n154#1:3249\n194#1:3343\n225#1:3433\n391#1:3517\n1464#1:3977\n696#1:3632\n748#1:3763\n781#1:3831\n971#1:3884\n1512#1:4027\n2098#1:4037,11\n2153#1:4048,11\n2361#1:4063,3\n2361#1:4066,8\n2416#1:4074,3\n2416#1:4077,8\n2435#1:4085,8\n2465#1:4093,3\n2465#1:4096,8\n2526#1:4104,8\n2575#1:4115\n2575#1:4116,2\n2576#1:4118,14\n2640#1:4134\n2640#1:4135,2\n2641#1:4137,14\n2681#1:4151\n2681#1:4152,2\n2682#1:4154,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\"\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0004\u00de\u0001\u00df\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\"\u0008\u0002\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010P\u001a\u00020\u001c2\u0006\u0010Q\u001a\u00020\u0010H\u0002J\u0006\u0010R\u001a\u00020\u0007J\u0010\u0010R\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u0016J\u0016\u0010R\u001a\u00020\u00072\u000e\u0010S\u001a\n\u0018\u00010Tj\u0004\u0018\u0001`UJ\u0017\u0010V\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u0016H\u0010\u00a2\u0006\u0002\u0008WJ\u001e\u0010X\u001a\u00020\u00072\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010K\u001a\u00020\u0010H\u0002J\u0006\u0010Z\u001a\u00020\u0007J\u0012\u0010[\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u0016H\u0016J\u000e\u0010\\\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u001a\u0010]\u001a\u00020\u001c2\u0008\u0010S\u001a\u0004\u0018\u00010\u00162\u0006\u0010R\u001a\u00020\u001cH\u0014J\u0010\u0010^\u001a\u00020\u00072\u0006\u0010_\u001a\u00020\u0010H\u0002J\u0016\u0010`\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010_\u001a\u00020\u0010H\u0002J\u0008\u0010a\u001a\u00020\u0007H\u0002J\u0010\u0010b\u001a\u00020\u00072\u0006\u0010c\u001a\u00020\u0010H\u0004J\u0008\u0010d\u001a\u00020\u0007H\u0002J.\u0010e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010h\u001a\u00020\u0010H\u0002J&\u0010i\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J&\u0010j\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\r\u0010k\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008lJ\u0012\u0010m\u001a\u00020\u00072\u0008\u0008\u0002\u0010n\u001a\u00020\u0010H\u0002J\u0008\u0010o\u001a\u00020\u0007H\u0002J-\u0010p\u001a\u00020\u00072#\u0010q\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(S\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J&\u0010r\u001a\u00020\u001c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\u0010H\u0002J\u0018\u0010v\u001a\u00020\u001c2\u0006\u0010w\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u000f\u0010x\u001a\u0008\u0012\u0004\u0012\u00028\u00000yH\u0096\u0002J\u0016\u0010z\u001a\u00020\u00102\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u0008\u0010{\u001a\u00020\u0007H\u0002J\u0008\u0010|\u001a\u00020\u0007H\u0002J\u0008\u0010}\u001a\u00020\u0007H\u0002J\u001e\u0010~\u001a\u00020\u00072\u0006\u0010f\u001a\u00020\u00102\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u0008\u0010\u007f\u001a\u00020\u0007H\u0014J\"\u0010\u0080\u0001\u001a\u00020\u00072\u0014\u0010\u0081\u0001\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000,0\u0082\u0001H\u0002\u00f8\u0001\u0000J\u0019\u0010\u0083\u0001\u001a\u00020\u00072\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0082\u0001H\u0002J\u0015\u0010\u0084\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\u0008\u000309H\u0002J$\u0010\u0085\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u00002\n\u0010<\u001a\u0006\u0012\u0002\u0008\u000309H\u0002\u00a2\u0006\u0003\u0010\u0087\u0001J\u001c\u0010\u0088\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0089\u0001J(\u0010\u008a\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u0082\u0001H\u0002\u00a2\u0006\u0003\u0010\u008b\u0001J\t\u0010\u008c\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u008d\u0001\u001a\u00020\u0007H\u0014J!\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J!\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J!\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J!\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000c2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J\u0013\u0010\u0094\u0001\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0095\u0001J%\u0010\u0096\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000,H\u0096@\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0095\u0001JD\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000,2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u008c\u0002\u0010\u009c\u0001\u001a\u0003H\u009d\u0001\"\u0005\u0008\u0001\u0010\u009d\u00012\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2$\u0010\u009f\u0001\u001a\u001f\u0012\u0014\u0012\u00128\u0000\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0086\u0001\u0012\u0005\u0012\u0003H\u009d\u00010\u00062V\u0010\u00a0\u0001\u001aQ\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0014\u0012\u00120\u0010\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0099\u0001\u0012\u0005\u0012\u0003H\u009d\u0001082\u000f\u0010\u00a3\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010\u00a4\u00012X\u0008\u0002\u0010\u00a5\u0001\u001aQ\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0014\u0012\u00120\u0010\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0099\u0001\u0012\u0005\u0012\u0003H\u009d\u000108H\u0082\u0008\u00a2\u0006\u0003\u0010\u00a6\u0001Jh\u0010\u00a7\u0001\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\u0008\u0010\u009e\u0001\u001a\u00030\u00a8\u00012#\u0010\u009f\u0001\u001a\u001e\u0012\u0014\u0012\u00128\u0000\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0086\u0001\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\u00a3\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u00a4\u0001H\u0082\u0008J2\u0010\u00a9\u0001\u001a\u00028\u00002\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u009b\u0001J \u0010\u00aa\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\u0008\u0003092\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J \u0010\u00ab\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\u0008\u0003092\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000cH\u0014J\u0017\u0010\u00ac\u0001\u001a\u00020\u00072\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u001c\u0010\u00ad\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u0089\u0001J\u001f\u0010\u00ae\u0001\u001a\u00020\u001c2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0090@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00af\u0001\u0010\u0089\u0001J\u0082\u0002\u0010\u00b0\u0001\u001a\u0003H\u009d\u0001\"\u0005\u0008\u0001\u0010\u009d\u00012\u0007\u0010\u0086\u0001\u001a\u00028\u00002\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2\u000f\u0010\u00b1\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010\u00a4\u00012A\u0010\u00a0\u0001\u001a<\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0005\u0012\u0003H\u009d\u00010\u00b2\u00012\u000f\u0010\u00a3\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010\u00a4\u00012o\u0008\u0002\u0010\u00a5\u0001\u001ah\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a1\u0001\u0012\u0014\u0012\u00120\u0004\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00a2\u0001\u0012\u0014\u0012\u00128\u0000\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u0086\u0001\u0012\u0014\u0012\u00120\u0010\u00a2\u0006\r\u0008:\u0012\t\u0008;\u0012\u0005\u0008\u0008(\u00b4\u0001\u0012\u0005\u0012\u0003H\u009d\u00010\u00b3\u0001H\u0084\u0008\u00a2\u0006\u0003\u0010\u00b5\u0001Jb\u0010\u00b6\u0001\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u00102\u0008\u0010\u009e\u0001\u001a\u00030\u00a8\u00012\u000e\u0010\u00b1\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u00a4\u00012\u000e\u0010\u00a3\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u00a4\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u00b7\u0001J;\u0010\u00b8\u0001\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0003\u0010\u00b9\u0001J\u000f\u0010\u00ba\u0001\u001a\u00020\u001cH\u0010\u00a2\u0006\u0003\u0008\u00bb\u0001J\u0012\u0010\u00ba\u0001\u001a\u00020\u001c2\u0007\u0010\u00bc\u0001\u001a\u00020\u0010H\u0003J\n\u0010\u00bd\u0001\u001a\u00030\u00be\u0001H\u0016J\u0010\u0010\u00bf\u0001\u001a\u00030\u00be\u0001H\u0000\u00a2\u0006\u0003\u0008\u00c0\u0001J!\u0010\u00c1\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000,H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001J*\u0010\u00c4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070,2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001J(\u0010\u00c7\u0001\u001a\u00020\u001c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u00c8\u0001\u001a\u00020\u0010H\u0002J(\u0010\u00c9\u0001\u001a\u00020\u001c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u00c8\u0001\u001a\u00020\u0010H\u0002J5\u0010\u00ca\u0001\u001a\u0004\u0018\u00010\u000c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000cH\u0002J5\u0010\u00cb\u0001\u001a\u0004\u0018\u00010\u000c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000cH\u0002JK\u0010\u00cc\u0001\u001a\u00020\u00042\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2\u0007\u0010\u00cd\u0001\u001a\u00020\u001cH\u0002\u00a2\u0006\u0003\u0010\u00ce\u0001JK\u0010\u00cf\u0001\u001a\u00020\u00042\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010\u00b4\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u000c2\u0007\u0010\u00cd\u0001\u001a\u00020\u001cH\u0002\u00a2\u0006\u0003\u0010\u00ce\u0001J\u0012\u0010\u00d0\u0001\u001a\u00020\u00072\u0007\u0010\u00d1\u0001\u001a\u00020\u0010H\u0002J\u0012\u0010\u00d2\u0001\u001a\u00020\u00072\u0007\u0010\u00d1\u0001\u001a\u00020\u0010H\u0002J\u0017\u0010\u00d3\u0001\u001a\u00020\u00072\u0006\u0010u\u001a\u00020\u0010H\u0000\u00a2\u0006\u0003\u0008\u00d4\u0001J$\u0010\u00d5\u0001\u001a\u00020\u0007*\u00030\u00a8\u00012\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002J$\u0010\u00d6\u0001\u001a\u00020\u0007*\u00030\u00a8\u00012\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002J\u000e\u0010\u00d7\u0001\u001a\u00020\u0007*\u00030\u00a8\u0001H\u0002J\u000e\u0010\u00d8\u0001\u001a\u00020\u0007*\u00030\u00a8\u0001H\u0002J\u0017\u0010\u00d9\u0001\u001a\u00020\u0007*\u00030\u00a8\u00012\u0007\u0010\u00da\u0001\u001a\u00020\u001cH\u0002J\u001c\u0010\u00db\u0001\u001a\u00020\u001c*\u00020\u000c2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0002\u00a2\u0006\u0003\u0010\u00dc\u0001J#\u0010\u00dd\u0001\u001a\u00020\u001c*\u00020\u000c2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002R\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004R\t\u0010\r\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00168DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004R\t\u0010\u001a\u001a\u00020\u000eX\u0082\u0004R\u001a\u0010\u001b\u001a\u00020\u001c8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001fR\u001a\u0010 \u001a\u00020\u001c8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008!\u0010\u001e\u001a\u0004\u0008 \u0010\u001fR\u0014\u0010\"\u001a\u00020\u001c8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001fR\u001a\u0010#\u001a\u00020\u001c8VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008$\u0010\u001e\u001a\u0004\u0008#\u0010\u001fR\u0014\u0010%\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001fR \u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00000\'8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008(\u0010\u001e\u001a\u0004\u0008)\u0010*R)\u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000,0\'8VX\u0096\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008-\u0010\u001e\u001a\u0004\u0008.\u0010*R\"\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\'8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u00080\u0010\u001e\u001a\u0004\u00081\u0010*R,\u00102\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000038VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u00084\u0010\u001e\u001a\u0004\u00085\u00106R*\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00088\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000Ru\u00107\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\u0008\u000309\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(<\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(=\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008:\u0012\u0008\u0008;\u0012\u0004\u0008\u0008(>\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u000108j\u0004\u0018\u0001`?X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008@\u0010\u001eR\u0014\u0010A\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\u0018R\u0015\u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\t\u0010D\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010E\u001a\u00020\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010\u0012R\u0014\u0010G\u001a\u00020\u00168DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010\u0018R\u0015\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\t\u0010J\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010K\u001a\u00020\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u0012R\u0018\u0010M\u001a\u00020\u001c*\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u0018\u0010O\u001a\u00020\u001c*\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010N\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u00e0\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BufferedChannel;",
        "E",
        "Lkotlinx/coroutines/channels/Channel;",
        "capacity",
        "",
        "onUndeliveredElement",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "(ILkotlin/jvm/functions/Function1;)V",
        "_closeCause",
        "Lkotlinx/atomicfu/AtomicRef;",
        "",
        "bufferEnd",
        "Lkotlinx/atomicfu/AtomicLong;",
        "bufferEndCounter",
        "",
        "getBufferEndCounter",
        "()J",
        "bufferEndSegment",
        "Lkotlinx/coroutines/channels/ChannelSegment;",
        "closeCause",
        "",
        "getCloseCause",
        "()Ljava/lang/Throwable;",
        "closeHandler",
        "completedExpandBuffersAndPauseFlag",
        "isClosedForReceive",
        "",
        "isClosedForReceive$annotations",
        "()V",
        "()Z",
        "isClosedForSend",
        "isClosedForSend$annotations",
        "isConflatedDropOldest",
        "isEmpty",
        "isEmpty$annotations",
        "isRendezvousOrUnlimited",
        "onReceive",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnReceive$annotations",
        "getOnReceive",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "onReceiveCatching",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "getOnReceiveCatching$annotations",
        "getOnReceiveCatching",
        "onReceiveOrNull",
        "getOnReceiveOrNull$annotations",
        "getOnReceiveOrNull",
        "onSend",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnSend$annotations",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "onUndeliveredElementReceiveCancellationConstructor",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "Lkotlin/ParameterName;",
        "name",
        "select",
        "param",
        "internalResult",
        "Lkotlinx/coroutines/selects/OnCancellationConstructor;",
        "getOnUndeliveredElementReceiveCancellationConstructor$annotations",
        "receiveException",
        "getReceiveException",
        "receiveSegment",
        "receivers",
        "receiversCounter",
        "getReceiversCounter$kotlinx_coroutines_core",
        "sendException",
        "getSendException",
        "sendSegment",
        "sendersAndCloseStatus",
        "sendersCounter",
        "getSendersCounter$kotlinx_coroutines_core",
        "isClosedForReceive0",
        "(J)Z",
        "isClosedForSend0",
        "bufferOrRendezvousSend",
        "curSenders",
        "cancel",
        "cause",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "cancelImpl",
        "cancelImpl$kotlinx_coroutines_core",
        "cancelSuspendedReceiveRequests",
        "lastSegment",
        "checkSegmentStructureInvariants",
        "close",
        "closeLinkedList",
        "closeOrCancelImpl",
        "completeCancel",
        "sendersCur",
        "completeClose",
        "completeCloseOrCancel",
        "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer",
        "globalCellIndex",
        "expandBuffer",
        "findSegmentBufferEnd",
        "id",
        "startFrom",
        "currentBufferEndCounter",
        "findSegmentReceive",
        "findSegmentSend",
        "hasElements",
        "hasElements$kotlinx_coroutines_core",
        "incCompletedExpandBufferAttempts",
        "nAttempts",
        "invokeCloseHandler",
        "invokeOnClose",
        "handler",
        "isCellNonEmpty",
        "segment",
        "index",
        "globalIndex",
        "isClosed",
        "sendersAndCloseStatusCur",
        "iterator",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "markAllEmptyCellsAsClosed",
        "markCancellationStarted",
        "markCancelled",
        "markClosed",
        "moveSegmentBufferEndToSpecifiedOrLast",
        "onClosedIdempotent",
        "onClosedReceiveCatchingOnNoWaiterSuspend",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "onClosedReceiveOnNoWaiterSuspend",
        "onClosedSelectOnReceive",
        "onClosedSelectOnSend",
        "element",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V",
        "onClosedSend",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onClosedSendOnNoWaiterSuspend",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V",
        "onReceiveDequeued",
        "onReceiveEnqueued",
        "processResultSelectReceive",
        "ignoredParam",
        "selectResult",
        "processResultSelectReceiveCatching",
        "processResultSelectReceiveOrNull",
        "processResultSelectSend",
        "receive",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveCatching",
        "receiveCatching-JP2dKIU",
        "receiveCatchingOnNoWaiterSuspend",
        "r",
        "receiveCatchingOnNoWaiterSuspend-GKJJFZk",
        "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "receiveImpl",
        "R",
        "waiter",
        "onElementRetrieved",
        "onSuspend",
        "segm",
        "i",
        "onClosed",
        "Lkotlin/Function0;",
        "onNoWaiterSuspend",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "receiveImplOnNoWaiter",
        "Lkotlinx/coroutines/Waiter;",
        "receiveOnNoWaiterSuspend",
        "registerSelectForReceive",
        "registerSelectForSend",
        "removeUnprocessedElements",
        "send",
        "sendBroadcast",
        "sendBroadcast$kotlinx_coroutines_core",
        "sendImpl",
        "onRendezvousOrBuffered",
        "Lkotlin/Function2;",
        "Lkotlin/Function4;",
        "s",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "sendImplOnNoWaiter",
        "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "sendOnNoWaiterSuspend",
        "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldSendSuspend",
        "shouldSendSuspend$kotlinx_coroutines_core",
        "curSendersAndCloseStatus",
        "toString",
        "",
        "toStringDebug",
        "toStringDebug$kotlinx_coroutines_core",
        "tryReceive",
        "tryReceive-PtdJZtk",
        "()Ljava/lang/Object;",
        "trySend",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "updateCellExpandBuffer",
        "b",
        "updateCellExpandBufferSlow",
        "updateCellReceive",
        "updateCellReceiveSlow",
        "updateCellSend",
        "closed",
        "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I",
        "updateCellSendSlow",
        "updateReceiversCounterIfLower",
        "value",
        "updateSendersCounterIfLower",
        "waitExpandBufferCompletion",
        "waitExpandBufferCompletion$kotlinx_coroutines_core",
        "prepareReceiverForSuspension",
        "prepareSenderForSuspension",
        "resumeReceiverOnClosedChannel",
        "resumeSenderOnCancelledChannel",
        "resumeWaiterOnClosedChannel",
        "receiver",
        "tryResumeReceiver",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "tryResumeSender",
        "BufferedChannelIterator",
        "SendBroadcast",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final _closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile _closeCause:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile bufferEnd:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile bufferEndSegment:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private final capacity:I

.field private volatile closeHandler:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile completedExpandBuffersAndPauseFlag:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile receiveSegment:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile receivers:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile sendSegment:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile sendersAndCloseStatus:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "sendersAndCloseStatus"

    const-class v1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string/jumbo v2, "sendSegment"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "receiveSegment"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "bufferEndSegment"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_closeCause"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "closeHandler"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "capacity"    # I
    .param p2, "onUndeliveredElement"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    .line 42
    iput-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 45
    nop

    .line 46
    iget v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 48
    nop

    .line 68
    iget v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    invoke-static {v0}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$initialBufferEnd(I)J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd:J

    .line 87
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag:J

    .line 96
    nop

    .line 98
    new-instance v0, Lkotlinx/coroutines/channels/ChannelSegment;

    const/4 v5, 0x0

    const/4 v7, 0x3

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/ChannelSegment;-><init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    .line 99
    .local v0, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment:Ljava/lang/Object;

    .line 100
    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment:Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment:Ljava/lang/Object;

    .line 106
    .end local v0    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    nop

    .line 1541
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    .local v0, "it":Lkotlin/jvm/functions/Function1;
    const/4 v1, 0x0

    .line 1542
    .local v1, "$i$a$-let-BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1":I
    new-instance v2, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/channels/BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1541
    .end local v0    # "it":Lkotlin/jvm/functions/Function1;
    .end local v1    # "$i$a$-let-BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1":I
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1721
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause:Ljava/lang/Object;

    .line 36
    return-void

    .line 3056
    :cond_3
    const/4 v0, 0x0

    .line 46
    .local v0, "$i$a$-require-BufferedChannel$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", should be >=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferedChannel$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 43
    const/4 p2, 0x0

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 2733
    return-void
.end method

.method public static final synthetic access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentSend(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getReceiveException(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;

    .line 36
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 36
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 36
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 36
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 36
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static final synthetic access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$receiver"    # J

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend0(J)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 36
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 36
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$onClosedSend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "cont"    # Lkotlinx/coroutines/CancellableContinuation;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSendOnNoWaiterSuspend(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$receiver"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->prepareReceiverForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    return-void
.end method

.method public static final synthetic access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$receiver"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->prepareSenderForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    return-void
.end method

.method public static final synthetic access$processResultSelectReceive(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processResultSelectReceiveCatching(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processResultSelectReceiveOrNull(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processResultSelectSend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$registerSelectForReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 36
    invoke-direct/range {p0 .. p6}, Lkotlinx/coroutines/channels/BufferedChannel;->sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Ljava/lang/Object;

    .line 36
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Ljava/lang/Object;
    .param p7, "closed"    # Z

    .line 36
    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellSend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method private final bufferOrRendezvousSend(J)Z
    .locals 4
    .param p1, "curSenders"    # J

    .line 614
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final cancelSuspendedReceiveRequests(Lkotlinx/coroutines/channels/ChannelSegment;J)V
    .locals 9
    .param p1, "lastSegment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "sendersCounter"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;J)V"
        }
    .end annotation

    .line 2115
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v0

    .line 2116
    .local v0, "suspendedReceivers":Ljava/lang/Object;
    move-object v2, p1

    .line 2117
    .local v2, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_6

    .line 2118
    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    sub-int/2addr v4, v1

    .local v4, "index":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 2120
    iget-wide v5, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v7, v7

    mul-long/2addr v5, v7

    int-to-long v7, v4

    add-long/2addr v5, v7

    cmp-long v5, v5, p2

    if-ltz v5, :cond_6

    .line 2122
    :cond_0
    nop

    .line 2123
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v5

    .line 2124
    .local v5, "state":Ljava/lang/Object;
    nop

    .line 2125
    if-eqz v5, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 2131
    :cond_1
    instance-of v6, v5, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v6, :cond_2

    .line 2132
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2133
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v6, v6, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    invoke-static {v0, v6}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2134
    invoke-virtual {v2, v4, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 2135
    goto :goto_3

    .line 2138
    :cond_2
    instance-of v6, v5, Lkotlinx/coroutines/Waiter;

    if-eqz v6, :cond_3

    .line 2139
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2140
    invoke-static {v0, v5}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2141
    invoke-virtual {v2, v4, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 2142
    goto :goto_3

    .line 2145
    :cond_3
    goto :goto_3

    .line 2126
    :cond_4
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2127
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2128
    nop

    .line 2118
    .end local v5    # "state":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2150
    .end local v4    # "index":I
    :cond_5
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    goto :goto_0

    .line 2153
    :cond_6
    const/4 v4, 0x0

    .line 4048
    .local v4, "$i$f$forEachReversed-impl":I
    nop

    .line 4049
    if-eqz v0, :cond_9

    .line 4050
    instance-of v5, v0, Ljava/util/ArrayList;

    if-nez v5, :cond_7

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Waiter;

    .local v1, "it":Lkotlinx/coroutines/Waiter;
    const/4 v3, 0x0

    .line 2153
    .local v3, "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeReceiverOnClosedChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4050
    .end local v1    # "it":Lkotlinx/coroutines/Waiter;
    .end local v3    # "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    goto :goto_5

    .line 4052
    :cond_7
    const-string v5, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    .line 4053
    .local v5, "list$iv":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .local v6, "i$iv":I
    :goto_4
    if-ge v3, v6, :cond_8

    .line 4054
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Waiter;

    .restart local v1    # "it":Lkotlinx/coroutines/Waiter;
    const/4 v7, 0x0

    .line 2153
    .local v7, "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeReceiverOnClosedChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4054
    .end local v1    # "it":Lkotlinx/coroutines/Waiter;
    .end local v7    # "$i$a$-forEachReversed-impl-BufferedChannel$cancelSuspendedReceiveRequests$1":I
    nop

    .line 4053
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 4058
    .end local v5    # "list$iv":Ljava/util/ArrayList;
    .end local v6    # "i$iv":I
    :cond_8
    :goto_5
    nop

    .line 2154
    .end local v4    # "$i$f$forEachReversed-impl":I
    :cond_9
    return-void
.end method

.method private final closeLinkedList()Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    .line 1953
    const/4 v0, 0x0

    .local v0, "lastSegment":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1954
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3056
    .local v1, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 1954
    .local v2, "$i$a$-let-BufferedChannel$closeLinkedList$1":I
    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v5, v5, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move-object v0, v1

    .end local v1    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "$i$a$-let-BufferedChannel$closeLinkedList$1":I
    :cond_0
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1955
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3056
    .restart local v1    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 1955
    .local v2, "$i$a$-let-BufferedChannel$closeLinkedList$2":I
    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v5, v5, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    move-object v0, v1

    .line 1958
    .end local v1    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "$i$a$-let-BufferedChannel$closeLinkedList$2":I
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    invoke-static {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->close(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    return-object v1
.end method

.method private final completeCancel(J)V
    .locals 1
    .param p1, "sendersCur"    # J

    .line 1942
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    .line 1945
    .local v0, "lastSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->removeUnprocessedElements(Lkotlinx/coroutines/channels/ChannelSegment;)V

    .line 1946
    return-void
.end method

.method private final completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 5
    .param p1, "sendersCur"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    .line 1913
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeLinkedList()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    .line 1923
    .local v0, "lastSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isConflatedDropOldest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1924
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->markAllEmptyCellsAsClosed(Lkotlinx/coroutines/channels/ChannelSegment;)J

    move-result-wide v1

    .line 1925
    .local v1, "lastBufferedCellGlobalIndex":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1926
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 1930
    .end local v1    # "lastBufferedCellGlobalIndex":J
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelSuspendedReceiveRequests(Lkotlinx/coroutines/channels/ChannelSegment;J)V

    .line 1933
    return-object v0
.end method

.method private final completeCloseOrCancel()V
    .locals 0

    .line 1902
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    .line 1903
    return-void
.end method

.method private final expandBuffer()V
    .locals 18

    .line 1173
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1176
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    move-object v7, v0

    .line 1178
    .local v7, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1181
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    .line 1182
    .local v8, "b":J
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    div-long v10, v8, v0

    .line 1190
    .local v10, "id":J
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v12

    .line 1191
    .local v12, "s":J
    cmp-long v0, v12, v8

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v4, 0x0

    if-gtz v0, :cond_2

    .line 1193
    iget-wide v0, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_1

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1194
    invoke-direct {v6, v10, v11, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V

    .line 1196
    :cond_1
    invoke-static {v6, v4, v5, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 1197
    return-void

    .line 1201
    :cond_2
    iget-wide v0, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_4

    .line 1202
    move-object/from16 v0, p0

    move-wide v1, v10

    move-object v3, v7

    move-wide/from16 v16, v10

    move-wide v10, v4

    .end local v10    # "id":J
    .local v16, "id":J
    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentBufferEnd(JLkotlinx/coroutines/channels/ChannelSegment;J)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1209
    goto :goto_0

    .line 1202
    :cond_3
    move-object v7, v0

    .end local v7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto :goto_1

    .line 1201
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v16    # "id":J
    .restart local v7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "id":J
    :cond_4
    move-wide/from16 v16, v10

    move-wide v10, v4

    .line 1213
    .end local v10    # "id":J
    .restart local v16    # "id":J
    :goto_1
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    rem-long v0, v8, v0

    long-to-int v0, v0

    .line 1214
    .local v0, "i":I
    invoke-direct {v6, v7, v0, v8, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellExpandBuffer(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1222
    invoke-static {v6, v10, v11, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 1223
    return-void

    .line 1228
    :cond_5
    invoke-static {v6, v10, v11, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 1229
    goto :goto_0
.end method

.method private final findSegmentBufferEnd(JLkotlinx/coroutines/channels/ChannelSegment;J)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 17
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p4, "currentBufferEndCounter"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;J)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2465
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v1, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .line 4093
    .local v2, "$i$f$findSegmentAndMoveForward$atomicfu":I
    :cond_0
    nop

    .line 4094
    move-object/from16 v3, p3

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    invoke-static {v3, v7, v8, v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v3

    .line 4095
    .local v3, "s$iv":Ljava/lang/Object;
    invoke-static {v3}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    invoke-static {v3}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v4

    .local v4, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v10, 0x0

    .local v10, "$i$f$moveForward$atomicfu":I
    const/4 v11, 0x0

    .local v11, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/internal/Segment;

    .local v12, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v13, 0x0

    .line 4096
    .local v13, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    iget-wide v14, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    move/from16 v16, v10

    .end local v10    # "$i$f$moveForward$atomicfu":I
    .local v16, "$i$f$moveForward$atomicfu":I
    iget-wide v9, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v9, v14, v9

    if-ltz v9, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 4097
    :cond_1
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v9

    if-nez v9, :cond_2

    move v4, v5

    goto :goto_1

    .line 4098
    :cond_2
    invoke-static {v0, v6, v12, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4099
    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4100
    :cond_3
    const/4 v4, 0x1

    .line 4095
    .end local v4    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$f$loop$atomicfu":I
    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v13    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    .end local v16    # "$i$f$moveForward$atomicfu":I
    :goto_1
    if-eqz v4, :cond_0

    goto :goto_2

    .line 4102
    .restart local v4    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v11    # "$i$f$loop$atomicfu":I
    .restart local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v13    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    .restart local v16    # "$i$f$moveForward$atomicfu":I
    :cond_4
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4103
    :cond_5
    move/from16 v10, v16

    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v13    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    goto :goto_0

    .line 2465
    .end local v0    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v1    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v2    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .end local v3    # "s$iv":Ljava/lang/Object;
    .end local v4    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$f$loop$atomicfu":I
    .end local v16    # "$i$f$moveForward$atomicfu":I
    :cond_6
    :goto_2
    move-object v9, v3

    .local v9, "it":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 2466
    .local v10, "$i$a$-let-BufferedChannel$findSegmentBufferEnd$1":I
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_7

    .line 2471
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 2474
    invoke-direct/range {p0 .. p3}, Lkotlinx/coroutines/channels/BufferedChannel;->moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V

    .line 2477
    const/4 v0, 0x1

    invoke-static {v6, v11, v12, v0, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 2478
    goto :goto_5

    .line 2481
    :cond_7
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2483
    .local v14, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    iget-wide v0, v14, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_9

    .line 2489
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v1, 0x1

    add-long v2, p4, v1

    iget-wide v4, v14, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v11, v1

    mul-long/2addr v4, v11

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2490
    iget-wide v0, v14, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sub-long v0, v0, p4

    invoke-direct {v6, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    goto :goto_3

    .line 2492
    :cond_8
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v6, v0, v1, v2, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V

    .line 2495
    :goto_3
    goto :goto_5

    .line 2497
    :cond_9
    const/4 v2, 0x1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3056
    const/4 v0, 0x0

    .line 2497
    .local v0, "$i$a$-assert-BufferedChannel$findSegmentBufferEnd$1$1":I
    iget-wide v3, v14, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v3, v7

    if-nez v1, :cond_a

    move v5, v2

    .end local v0    # "$i$a$-assert-BufferedChannel$findSegmentBufferEnd$1$1":I
    :cond_a
    if-eqz v5, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2499
    :cond_c
    :goto_4
    move-object v13, v14

    .line 2466
    .end local v14    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    nop

    .line 2465
    .end local v9    # "it":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-BufferedChannel$findSegmentBufferEnd$1":I
    nop

    .line 2502
    return-object v13
.end method

.method private final findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 17
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2416
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .local v4, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v5, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    const/4 v6, 0x0

    .line 4074
    .local v6, "$i$f$findSegmentAndMoveForward$atomicfu":I
    :goto_0
    nop

    .line 4075
    move-object v7, v3

    check-cast v7, Lkotlinx/coroutines/internal/Segment;

    invoke-static {v7, v1, v2, v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v7

    .line 4076
    .local v7, "s$iv":Ljava/lang/Object;
    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v8

    .local v8, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v11, 0x0

    .local v11, "$i$f$moveForward$atomicfu":I
    const/4 v12, 0x0

    .local v12, "$i$f$loop$atomicfu":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/internal/Segment;

    .local v13, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v14, 0x0

    .line 4077
    .local v14, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    iget-wide v9, v13, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v15, v5

    move/from16 v16, v6

    .end local v5    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v6    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .local v15, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .local v16, "$i$f$findSegmentAndMoveForward$atomicfu":I
    iget-wide v5, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v5, v9, v5

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    .line 4078
    :cond_0
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    .line 4079
    :cond_1
    invoke-static {v4, v0, v13, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4080
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4081
    :cond_2
    const/4 v5, 0x1

    .line 4076
    .end local v8    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$f$moveForward$atomicfu":I
    .end local v12    # "$i$f$loop$atomicfu":I
    .end local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    :goto_2
    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v15

    move/from16 v6, v16

    goto :goto_0

    .line 4083
    .restart local v8    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v11    # "$i$f$moveForward$atomicfu":I
    .restart local v12    # "$i$f$loop$atomicfu":I
    .restart local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    :cond_4
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4084
    :cond_5
    move-object v5, v15

    move/from16 v6, v16

    .end local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    goto :goto_1

    .line 4076
    .end local v8    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$f$moveForward$atomicfu":I
    .end local v12    # "$i$f$loop$atomicfu":I
    .end local v15    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .restart local v5    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .restart local v6    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    :cond_6
    move-object v15, v5

    move/from16 v16, v6

    .line 2416
    .end local v4    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v5    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v6    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .end local v7    # "s$iv":Ljava/lang/Object;
    :goto_3
    move-object v4, v7

    .local v4, "it":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 2417
    .local v5, "$i$a$-let-BufferedChannel$findSegmentReceive$1":I
    invoke-static {v4}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2422
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 2428
    iget-wide v8, v3, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v6

    mul-long/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gez v6, :cond_7

    invoke-virtual/range {p3 .. p3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2430
    :cond_7
    move-object/from16 v16, v4

    const/4 v7, 0x0

    goto/16 :goto_8

    .line 2433
    :cond_8
    invoke-static {v4}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2435
    .local v6, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v8

    sget v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    cmp-long v8, v1, v8

    if-gtz v8, :cond_c

    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .local v8, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    const/4 v9, 0x0

    .local v9, "$i$f$moveForward$atomicfu":I
    const/4 v10, 0x0

    .local v10, "$i$f$loop$atomicfu":I
    :goto_4
    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/internal/Segment;

    .local v11, "cur$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v12, 0x0

    .line 4085
    .local v12, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    iget-wide v13, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/Segment;

    move-object/from16 v16, v4

    .end local v4    # "it":Ljava/lang/Object;
    .local v16, "it":Ljava/lang/Object;
    iget-wide v3, v7, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v3, v13, v3

    if-gez v3, :cond_d

    .line 4086
    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4087
    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    invoke-static {v8, v0, v11, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4088
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4089
    :cond_9
    goto :goto_5

    .line 4091
    :cond_a
    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4092
    :cond_b
    move-object/from16 v3, p3

    move-object/from16 v4, v16

    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    goto :goto_4

    .line 2435
    .end local v8    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v9    # "$i$f$moveForward$atomicfu":I
    .end local v10    # "$i$f$loop$atomicfu":I
    .end local v16    # "it":Ljava/lang/Object;
    .restart local v4    # "it":Ljava/lang/Object;
    :cond_c
    move-object/from16 v16, v4

    .line 2439
    .end local v4    # "it":Ljava/lang/Object;
    .restart local v16    # "it":Ljava/lang/Object;
    :cond_d
    :goto_5
    iget-wide v3, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_f

    .line 2443
    iget-wide v3, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v7, v7

    mul-long/2addr v3, v7

    invoke-direct {v0, v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->updateReceiversCounterIfLower(J)V

    .line 2449
    iget-wide v3, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v7, v7

    mul-long/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-gez v3, :cond_e

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2451
    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    .line 2453
    :cond_f
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3056
    const/4 v3, 0x0

    .line 2453
    .local v3, "$i$a$-assert-BufferedChannel$findSegmentReceive$1$1":I
    iget-wide v7, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v4, v7, v1

    if-nez v4, :cond_10

    const/4 v9, 0x1

    goto :goto_6

    :cond_10
    const/4 v9, 0x0

    .end local v3    # "$i$a$-assert-BufferedChannel$findSegmentReceive$1$1":I
    :goto_6
    if-eqz v9, :cond_11

    goto :goto_7

    :cond_11
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2455
    :cond_12
    :goto_7
    move-object v7, v6

    .line 2417
    .end local v6    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_8
    nop

    .line 2416
    .end local v5    # "$i$a$-let-BufferedChannel$findSegmentReceive$1":I
    .end local v16    # "it":Ljava/lang/Object;
    nop

    .line 2458
    return-object v7
.end method

.method private final findSegmentSend(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 17
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2361
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegmentFunction()Lkotlin/reflect/KFunction;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .local v4, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v5, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    const/4 v6, 0x0

    .line 4063
    .local v6, "$i$f$findSegmentAndMoveForward$atomicfu":I
    :goto_0
    nop

    .line 4064
    move-object v7, v3

    check-cast v7, Lkotlinx/coroutines/internal/Segment;

    invoke-static {v7, v1, v2, v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v7

    .line 4065
    .local v7, "s$iv":Ljava/lang/Object;
    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v8

    .local v8, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v11, 0x0

    .local v11, "$i$f$moveForward$atomicfu":I
    const/4 v12, 0x0

    .local v12, "$i$f$loop$atomicfu":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/internal/Segment;

    .local v13, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v14, 0x0

    .line 4066
    .local v14, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    iget-wide v9, v13, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v15, v5

    move/from16 v16, v6

    .end local v5    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v6    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .local v15, "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .local v16, "$i$f$findSegmentAndMoveForward$atomicfu":I
    iget-wide v5, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v5, v9, v5

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    .line 4067
    :cond_0
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    .line 4068
    :cond_1
    invoke-static {v4, v0, v13, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4069
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4070
    :cond_2
    const/4 v5, 0x1

    .line 4065
    .end local v8    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$f$moveForward$atomicfu":I
    .end local v12    # "$i$f$loop$atomicfu":I
    .end local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    :goto_2
    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v15

    move/from16 v6, v16

    goto :goto_0

    .line 4072
    .restart local v8    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v11    # "$i$f$moveForward$atomicfu":I
    .restart local v12    # "$i$f$loop$atomicfu":I
    .restart local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    :cond_4
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4073
    :cond_5
    move-object v5, v15

    move/from16 v6, v16

    .end local v13    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    goto :goto_1

    .line 4065
    .end local v8    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v11    # "$i$f$moveForward$atomicfu":I
    .end local v12    # "$i$f$loop$atomicfu":I
    .end local v15    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v16    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .restart local v5    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .restart local v6    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    :cond_6
    move-object v15, v5

    move/from16 v16, v6

    .line 2361
    .end local v4    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v5    # "createNewSegment$iv":Lkotlin/jvm/functions/Function2;
    .end local v6    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .end local v7    # "s$iv":Ljava/lang/Object;
    :goto_3
    move-object v4, v7

    .local v4, "it":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 2362
    .local v5, "$i$a$-let-BufferedChannel$findSegmentSend$1":I
    invoke-static {v4}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 2367
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 2373
    iget-wide v8, v3, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v6

    mul-long/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gez v6, :cond_7

    invoke-virtual/range {p3 .. p3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2375
    :cond_7
    goto :goto_6

    .line 2378
    :cond_8
    invoke-static {v4}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2380
    .local v6, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    iget-wide v8, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v8, v8, v1

    if-lez v8, :cond_a

    .line 2384
    iget-wide v8, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    invoke-direct {v0, v8, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->updateSendersCounterIfLower(J)V

    .line 2390
    iget-wide v8, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2392
    :cond_9
    goto :goto_6

    .line 2394
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3056
    const/4 v7, 0x0

    .line 2394
    .local v7, "$i$a$-assert-BufferedChannel$findSegmentSend$1$1":I
    iget-wide v8, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v8, v8, v1

    if-nez v8, :cond_b

    const/4 v9, 0x1

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    .end local v7    # "$i$a$-assert-BufferedChannel$findSegmentSend$1$1":I
    :goto_4
    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2396
    :cond_d
    :goto_5
    move-object v7, v6

    .line 2362
    .end local v6    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_6
    nop

    .line 2361
    .end local v4    # "it":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-BufferedChannel$findSegmentSend$1":I
    return-object v7
.end method

.method private final getAndUpdate$atomicfu(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p3, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method private final getBufferEndCounter()J
    .locals 2

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getOnReceive$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnReceiveCatching$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnReceiveOrNull$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOnSend$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getOnUndeliveredElementReceiveCancellationConstructor$annotations()V
    .locals 0

    return-void
.end method

.method private final getReceiveException()Ljava/lang/Throwable;
    .locals 2

    .line 1729
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method private final incCompletedExpandBufferAttempts(J)V
    .locals 18
    .param p1, "nAttempts"    # J

    move-object/from16 v0, p0

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1370
    move-wide/from16 v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v4

    .local v4, "it":J
    const/4 v1, 0x0

    .line 1374
    .local v1, "$i$a$-also-BufferedChannel$incCompletedExpandBufferAttempts$1":I
    move-wide v6, v4

    .local v6, "$this$ebPauseExpandBuffers$iv":J
    const/4 v8, 0x0

    .line 3890
    .local v8, "$i$f$getEbPauseExpandBuffers":I
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    and-long v11, v6, v9

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    const/4 v12, 0x1

    const/4 v15, 0x0

    if-eqz v11, :cond_0

    move v6, v12

    goto :goto_0

    :cond_0
    move v6, v15

    .line 1374
    .end local v6    # "$this$ebPauseExpandBuffers$iv":J
    .end local v8    # "$i$f$getEbPauseExpandBuffers":I
    :goto_0
    if-eqz v6, :cond_3

    .line 1376
    :cond_1
    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    .restart local v6    # "$this$ebPauseExpandBuffers$iv":J
    const/4 v8, 0x0

    .line 3891
    .restart local v8    # "$i$f$getEbPauseExpandBuffers":I
    and-long v16, v6, v9

    cmp-long v11, v16, v13

    if-eqz v11, :cond_2

    move v6, v12

    goto :goto_1

    :cond_2
    move v6, v15

    .end local v6    # "$this$ebPauseExpandBuffers$iv":J
    .end local v8    # "$i$f$getEbPauseExpandBuffers":I
    :goto_1
    if-nez v6, :cond_1

    .line 1378
    :cond_3
    nop

    .line 1370
    .end local v1    # "$i$a$-also-BufferedChannel$incCompletedExpandBufferAttempts$1":I
    .end local v4    # "it":J
    nop

    .line 1379
    return-void
.end method

.method static synthetic incCompletedExpandBufferAttempts$default(Lkotlinx/coroutines/channels/BufferedChannel;JILjava/lang/Object;)V
    .locals 0

    .line 1368
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final invokeCloseHandler()V
    .locals 7

    .line 1809
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v2, 0x0

    .local v2, "$i$f$getAndUpdate$atomicfu":I
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .local v4, "it":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1810
    .local v5, "$i$a$-getAndUpdate$atomicfu-BufferedChannel$invokeCloseHandler$closeHandler$1":I
    if-nez v4, :cond_1

    .line 1813
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    goto :goto_0

    .line 1817
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    .line 1810
    :goto_0
    nop

    .end local v4    # "it":Ljava/lang/Object;
    .end local v5    # "$i$a$-getAndUpdate$atomicfu-BufferedChannel$invokeCloseHandler$closeHandler$1":I
    invoke-static {v0, p0, v3, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1809
    .end local v0    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v1    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v2    # "$i$f$getAndUpdate$atomicfu":I
    if-nez v3, :cond_2

    .line 1819
    return-void

    .line 1809
    :cond_2
    move-object v0, v3

    .line 1822
    .local v0, "closeHandler":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1823
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    return-void
.end method

.method private final isCellNonEmpty(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "globalIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 2293
    nop

    :cond_0
    nop

    .line 2295
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 2296
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 2298
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2309
    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    return v3

    .line 2311
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_3

    return v1

    .line 2313
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_4

    return v1

    .line 2316
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_5

    return v1

    .line 2319
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_6

    return v1

    .line 2323
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_7

    return v3

    .line 2327
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_8

    return v1

    .line 2338
    :cond_8
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v4

    cmp-long v2, p3, v4

    if-nez v2, :cond_9

    move v1, v3

    :cond_9
    return v1

    .line 2300
    :cond_a
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2304
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 2305
    return v1
.end method

.method private final isClosed(JZ)Z
    .locals 8
    .param p1, "sendersAndCloseStatusCur"    # J
    .param p3, "isClosedForReceive"    # Z

    .line 2196
    move-wide v0, p1

    .local v0, "$this$sendersCloseStatus$iv":J
    const/4 v2, 0x0

    .line 4059
    .local v2, "$i$f$getSendersCloseStatus":I
    const/16 v3, 0x3c

    shr-long v4, v0, v3

    long-to-int v0, v4

    .line 2196
    .end local v0    # "$this$sendersCloseStatus$iv":J
    .end local v2    # "$i$f$getSendersCloseStatus":I
    const-wide v1, 0xfffffffffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected close status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v1, p1

    .local v1, "$this$sendersCloseStatus$iv":J
    const/4 v4, 0x0

    .line 4062
    .local v4, "$i$f$getSendersCloseStatus":I
    shr-long v5, v1, v3

    long-to-int v1, v5

    .line 2222
    .end local v1    # "$this$sendersCloseStatus$iv":J
    .end local v4    # "$i$f$getSendersCloseStatus":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2219
    :pswitch_0
    move-wide v5, p1

    .local v5, "$this$sendersCounter$iv":J
    const/4 v0, 0x0

    .line 4061
    .local v0, "$i$f$getSendersCounter":I
    and-long v0, v5, v1

    .line 2219
    .end local v0    # "$i$f$getSendersCounter":I
    .end local v5    # "$this$sendersCounter$iv":J
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCancel(J)V

    .line 2220
    goto :goto_0

    .line 2209
    :pswitch_1
    move-wide v6, p1

    .local v6, "$this$sendersCounter$iv":J
    const/4 v0, 0x0

    .line 4060
    .restart local v0    # "$i$f$getSendersCounter":I
    and-long v0, v6, v1

    .line 2209
    .end local v0    # "$i$f$getSendersCounter":I
    .end local v6    # "$this$sendersCounter$iv":J
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2213
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_0

    .line 2202
    :pswitch_2
    move v4, v5

    goto :goto_0

    .line 2198
    :pswitch_3
    move v4, v5

    .line 2223
    :cond_1
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic isClosedForReceive$annotations()V
    .locals 0

    return-void
.end method

.method private final isClosedForReceive0(J)Z
    .locals 1
    .param p1, "$this$isClosedForReceive0"    # J

    .line 2191
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v0

    return v0
.end method

.method public static synthetic isClosedForSend$annotations()V
    .locals 0

    return-void
.end method

.method private final isClosedForSend0(J)Z
    .locals 1
    .param p1, "$this$isClosedForSend0"    # J

    .line 2184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v0

    return v0
.end method

.method public static synthetic isEmpty$annotations()V
    .locals 0

    return-void
.end method

.method private final isRendezvousOrUnlimited()Z
    .locals 5

    .line 90
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    .line 3056
    .local v0, "it":J
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$a$-let-BufferedChannel$isRendezvousOrUnlimited$1":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-BufferedChannel$isRendezvousOrUnlimited$1":I
    :goto_1
    return v3
.end method

.method private final loop$atomicfu(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final loop$atomicfu(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final markAllEmptyCellsAsClosed(Lkotlinx/coroutines/channels/ChannelSegment;)J
    .locals 8
    .param p1, "lastSegment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)J"
        }
    .end annotation

    .line 1972
    move-object v0, p1

    .line 1973
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 1974
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "index":I
    :goto_1
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-ge v4, v1, :cond_4

    .line 1976
    iget-wide v4, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 1977
    .local v4, "globalIndex":J
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    return-wide v2

    .line 1979
    :cond_0
    nop

    .line 1980
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v2

    .line 1981
    .local v2, "state":Ljava/lang/Object;
    nop

    .line 1983
    if-eqz v2, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 1991
    :cond_1
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_2

    return-wide v4

    .line 1993
    :cond_2
    goto :goto_3

    .line 1985
    :cond_3
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1986
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 1987
    nop

    .line 1974
    .end local v2    # "state":Ljava/lang/Object;
    .end local v4    # "globalIndex":J
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1998
    .end local v1    # "index":I
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v1, :cond_5

    return-wide v2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private final markCancellationStarted()V
    .locals 13

    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v6, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v8, 0x0

    .local v8, "$i$f$update$atomicfu":I
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "cur":J
    const/4 v4, 0x0

    .line 1893
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$markCancellationStarted$1":I
    move-wide v9, v0

    .local v9, "$this$sendersCloseStatus$iv":J
    const/4 v5, 0x0

    .line 4035
    .local v5, "$i$f$getSendersCloseStatus":I
    const/16 v11, 0x3c

    shr-long v11, v9, v11

    long-to-int v5, v11

    .line 1893
    .end local v5    # "$i$f$getSendersCloseStatus":I
    .end local v9    # "$this$sendersCloseStatus$iv":J
    if-nez v5, :cond_1

    .line 1894
    move-wide v9, v0

    .local v9, "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4036
    .local v5, "$i$f$getSendersCounter":I
    const-wide v11, 0xfffffffffffffffL

    and-long/2addr v9, v11

    .line 1894
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v9    # "$this$sendersCounter$iv":J
    const/4 v5, 0x1

    invoke-static {v9, v10, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v9

    .line 1893
    nop

    .end local v0    # "cur":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$markCancellationStarted$1":I
    move-object v0, v6

    move-object v1, p0

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    .end local v6    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v8    # "$i$f$update$atomicfu":I
    return-void

    .line 1895
    .restart local v0    # "cur":J
    .restart local v4    # "$i$a$-update$atomicfu-BufferedChannel$markCancellationStarted$1":I
    .restart local v6    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .restart local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v8    # "$i$f$update$atomicfu":I
    :cond_1
    return-void
.end method

.method private final markCancelled()V
    .locals 13

    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v6, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v8, 0x0

    .local v8, "$i$f$update$atomicfu":I
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "cur":J
    const/4 v4, 0x0

    .line 1882
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$markCancelled$1":I
    move-wide v9, v0

    .local v9, "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4034
    .local v5, "$i$f$getSendersCounter":I
    const-wide v11, 0xfffffffffffffffL

    and-long/2addr v9, v11

    .line 1882
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v9    # "$this$sendersCounter$iv":J
    const/4 v5, 0x3

    invoke-static {v9, v10, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v4

    .end local v0    # "cur":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$markCancelled$1":I
    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    .end local v6    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v8    # "$i$f$update$atomicfu":I
    return-void
.end method

.method private final markClosed()V
    .locals 13

    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v6, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v8, 0x0

    .local v8, "$i$f$update$atomicfu":I
    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "cur":J
    const/4 v4, 0x0

    .line 1865
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$markClosed$1":I
    move-wide v9, v0

    .local v9, "$this$sendersCloseStatus$iv":J
    const/4 v5, 0x0

    .line 4031
    .local v5, "$i$f$getSendersCloseStatus":I
    const/16 v11, 0x3c

    shr-long v11, v9, v11

    long-to-int v5, v11

    .line 1865
    .end local v5    # "$i$f$getSendersCloseStatus":I
    .end local v9    # "$this$sendersCloseStatus$iv":J
    const-wide v9, 0xfffffffffffffffL

    packed-switch v5, :pswitch_data_0

    .line 1870
    return-void

    .line 1869
    :pswitch_0
    move-wide v11, v0

    .local v11, "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4033
    .local v5, "$i$f$getSendersCounter":I
    and-long/2addr v9, v11

    .line 1869
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v11    # "$this$sendersCounter$iv":J
    const/4 v5, 0x3

    invoke-static {v9, v10, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v9

    goto :goto_0

    .line 1867
    :pswitch_1
    move-wide v11, v0

    .restart local v11    # "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4032
    .restart local v5    # "$i$f$getSendersCounter":I
    and-long/2addr v9, v11

    .line 1867
    .end local v5    # "$i$f$getSendersCounter":I
    .end local v11    # "$this$sendersCounter$iv":J
    const/4 v5, 0x2

    invoke-static {v9, v10, v5}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v9

    .line 1865
    :goto_0
    nop

    .end local v0    # "cur":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$markClosed$1":I
    move-object v0, v6

    move-object v1, p0

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    .end local v6    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v8    # "$i$f$update$atomicfu":I
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V
    .locals 10
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)V"
        }
    .end annotation

    .line 2512
    move-object v0, p3

    .line 2513
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 2514
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 2519
    :cond_1
    :goto_1
    nop

    .line 2520
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2521
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 2526
    :cond_3
    :goto_3
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .local v1, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    const/4 v2, 0x0

    .local v2, "$i$f$moveForward$atomicfu":I
    const/4 v3, 0x0

    .local v3, "$i$f$loop$atomicfu":I
    :goto_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    .local v4, "cur$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v5, 0x0

    .line 4104
    .local v5, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    iget-wide v6, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/internal/Segment;

    iget-wide v8, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-ltz v6, :cond_4

    goto :goto_5

    .line 4105
    :cond_4
    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    .line 4106
    :cond_5
    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    invoke-static {v1, p0, v4, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4107
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4108
    :cond_6
    nop

    .line 2526
    .end local v1    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v2    # "$i$f$moveForward$atomicfu":I
    .end local v3    # "$i$f$loop$atomicfu":I
    .end local v4    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v5    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    :goto_5
    if-eqz v7, :cond_1

    return-void

    .line 4110
    .restart local v1    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .restart local v2    # "$i$f$moveForward$atomicfu":I
    .restart local v3    # "$i$f$loop$atomicfu":I
    .restart local v4    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v5    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    :cond_7
    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 4111
    :cond_8
    nop

    .end local v4    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v5    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    goto :goto_4
.end method

.method private final onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 3
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 759
    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 760
    return-void
.end method

.method private final onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 2
    .param p1, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TE;>;)V"
        }
    .end annotation

    .line 721
    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 722
    return-void
.end method

.method private final onClosedSelectOnReceive(Lkotlinx/coroutines/selects/SelectInstance;)V
    .locals 1
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)V"
        }
    .end annotation

    .line 1520
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 1521
    return-void
.end method

.method private final onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)V"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 1475
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 1476
    return-void
.end method

.method private final onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .line 3133
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 3134
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 3140
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3141
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "continuation":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 135
    .local v5, "$i$a$-suspendCancellableCoroutine-BufferedChannel$onClosedSend$2":I
    iget-object v6, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, p1, v8, v7, v8}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v6

    if-eqz v6, :cond_2

    .local v6, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v7, 0x0

    .line 137
    .local v7, "$i$a$-let-BufferedChannel$onClosedSend$2$1":I
    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 138
    move-object v8, v4

    check-cast v8, Lkotlin/coroutines/Continuation;

    .local v8, "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    const/4 v9, 0x0

    .line 3142
    .local v9, "$i$f$resumeWithStackTrace":I
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v10, 0x0

    .line 3143
    .local v10, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v11

    if-eqz v11, :cond_1

    instance-of v11, v8, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v11, :cond_0

    goto :goto_0

    .line 3144
    :cond_0
    move-object v11, v6

    check-cast v11, Ljava/lang/Throwable;

    move-object v12, v8

    check-cast v12, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v11, v12}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v11

    goto :goto_1

    .line 3143
    :cond_1
    :goto_0
    move-object v11, v6

    check-cast v11, Ljava/lang/Throwable;

    .line 3142
    .end local v10    # "$i$f$recoverStackTrace":I
    :goto_1
    invoke-static {v11}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3145
    nop

    .line 139
    .end local v8    # "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$f$resumeWithStackTrace":I
    goto :goto_4

    .line 141
    .end local v6    # "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    .end local v7    # "$i$a$-let-BufferedChannel$onClosedSend$2$1":I
    :cond_2
    move-object v6, v4

    check-cast v6, Lkotlin/coroutines/Continuation;

    .local v6, "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v7

    .local v7, "exception$iv":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 3146
    .local v8, "$i$f$resumeWithStackTrace":I
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v9, 0x0

    .line 3147
    .local v9, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v10

    if-eqz v10, :cond_4

    instance-of v10, v6, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v10, :cond_3

    goto :goto_2

    .line 3148
    :cond_3
    move-object v10, v6

    check-cast v10, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v7, v10}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v10

    goto :goto_3

    .line 3147
    :cond_4
    :goto_2
    move-object v10, v7

    .line 3146
    .end local v9    # "$i$f$recoverStackTrace":I
    :goto_3
    invoke-static {v10}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3149
    nop

    .line 142
    .end local v6    # "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .end local v7    # "exception$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$f$resumeWithStackTrace":I
    nop

    .line 3141
    .end local v4    # "continuation":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-BufferedChannel$onClosedSend$2":I
    :goto_4
    nop

    .line 3150
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 3133
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_6

    return-object v1

    .line 3151
    :cond_6
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    return-object v0
.end method

.method private final onClosedSendOnNoWaiterSuspend(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 183
    :cond_0
    move-object v0, p2

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    .local v1, "exception$iv":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 3261
    .local v2, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    instance-of v3, v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v3, :cond_1

    goto :goto_0

    .line 3262
    :cond_1
    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    check-cast v3, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v1, v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v3

    move-object v1, v3

    .line 183
    .end local v1    # "exception$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$recoverStackTrace":I
    :cond_2
    :goto_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private final prepareReceiverForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 1
    .param p1, "$this$prepareReceiverForSuspension"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;I)V"
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveEnqueued()V

    .line 717
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    invoke-interface {p1, v0, p3}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 718
    return-void
.end method

.method private final prepareSenderForSuspension(Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    .locals 2
    .param p1, "$this$prepareSenderForSuspension"    # Lkotlinx/coroutines/Waiter;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;I)V"
        }
    .end annotation

    .line 178
    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    add-int/2addr v1, p3

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 179
    return-void
.end method

.method private final processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1525
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 1526
    return-object p2

    .line 1525
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private final processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1537
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne p2, v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1538
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v0

    return-object v0
.end method

.method private final processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1530
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 1531
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1532
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 1533
    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method private final processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ignoredParam"    # Ljava/lang/Object;
    .param p2, "selectResult"    # Ljava/lang/Object;

    .line 1480
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 1481
    return-object p0

    .line 1480
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method static synthetic receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 667
    nop

    .line 670
    nop

    .line 667
    move-object/from16 v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v5, 0x0

    .local v5, "waiter$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3519
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3520
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3523
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 681
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3526
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v14

    .line 3528
    .local v14, "r$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v8, v14, v1

    .line 3529
    .local v8, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v13, v1

    .line 3532
    .local v13, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_1

    .line 3534
    invoke-static {v6, v8, v9, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3538
    goto :goto_0

    .line 3534
    :cond_0
    move-object v0, v1

    move-object/from16 v16, v0

    goto :goto_1

    .line 3532
    :cond_1
    move-object/from16 v16, v0

    .line 3541
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v16, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v0, v6

    move-object/from16 v1, v16

    move v2, v13

    move-wide v3, v14

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3542
    .local v0, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3543
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 3549
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 3556
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v14, v1

    if-gez v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3557
    :cond_2
    move-object/from16 v0, v16

    goto :goto_0

    .line 3559
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 3562
    move-object/from16 v1, v16

    .local v1, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move v10, v13

    .local v10, "i":I
    move-wide v11, v14

    move-wide v2, v8

    .end local v8    # "id$iv":J
    .local v2, "id$iv":J
    .local v11, "r":J
    move-object v9, v1

    .end local v1    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v9, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v1, 0x0

    .line 685
    .local v1, "$i$a$-receiveImpl-BufferedChannel$receive$5":I
    move-object/from16 v8, p0

    move v4, v13

    .end local v13    # "i$iv":I
    .local v4, "i$iv":I
    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 3562
    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$receive$5":I
    .end local v9    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "i":I
    .end local v11    # "r":J
    nop

    .line 3542
    nop

    .line 686
    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v2    # "id$iv":J
    .end local v4    # "i$iv":I
    .end local v5    # "waiter$iv":Ljava/lang/Object;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v7    # "$i$f$receiveImpl":I
    .end local v14    # "r$iv":J
    .end local v16    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    return-object v1

    .line 3568
    .restart local v0    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v5    # "waiter$iv":Ljava/lang/Object;
    .restart local v6    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v7    # "$i$f$receiveImpl":I
    .restart local v8    # "id$iv":J
    .restart local v13    # "i$iv":I
    .restart local v14    # "r$iv":J
    .restart local v16    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_4
    move-wide v2, v8

    .end local v8    # "id$iv":J
    .restart local v2    # "id$iv":J
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3570
    move-object v1, v0

    .local v1, "element":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 676
    .local v8, "$i$a$-receiveImpl-BufferedChannel$receive$2":I
    return-object v1

    .line 3546
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "id$iv":J
    .local v8, "id$iv":J
    :cond_5
    move-wide v2, v8

    .line 3547
    .end local v8    # "id$iv":J
    .restart local v2    # "id$iv":J
    const/4 v1, 0x0

    .local v1, "$i$a$-receiveImpl-BufferedChannel$receive$3":I
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 679
    const-string/jumbo v9, "unexpected"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3523
    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$receive$3":I
    .end local v2    # "id$iv":J
    .end local v13    # "i$iv":I
    .end local v14    # "r$iv":J
    .end local v16    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    const/4 v1, 0x0

    .line 681
    .local v1, "$i$a$-receiveImpl-BufferedChannel$receive$4":I
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method static synthetic receiveCatching-JP2dKIU$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    iget v2, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 731
    iget v3, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "$i$f$receiveImpl":I
    const/4 v3, 0x0

    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2

    .end local v2    # "$i$f$receiveImpl":I
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .line 732
    .local v2, "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    move-object v3, v2

    .line 733
    .local v3, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v4, 0x0

    .line 732
    .local v4, "waiter$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    .line 3650
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3651
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 3654
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v3    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v4    # "waiter$iv":Ljava/lang/Object;
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v3, 0x0

    .line 738
    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$4":I
    sget-object v4, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 3654
    .end local v2    # "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$4":I
    goto/16 :goto_4

    .restart local v2    # "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v3, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v4    # "waiter$iv":Ljava/lang/Object;
    .restart local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    .line 3657
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    .line 3659
    .local v6, "r$iv":J
    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v9, v9

    div-long v9, v6, v9

    .line 3660
    .local v9, "id$iv":J
    sget v11, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v11, v11

    rem-long v11, v6, v11

    long-to-int v14, v11

    .line 3663
    .local v14, "i$iv":I
    iget-wide v11, v5, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v11, v11, v9

    if-eqz v11, :cond_3

    .line 3665
    invoke-static {v3, v9, v10, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v11

    if-nez v11, :cond_2

    .line 3669
    .end local v6    # "r$iv":J
    .end local v9    # "id$iv":J
    .end local v14    # "i$iv":I
    goto :goto_1

    .line 3665
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v6    # "r$iv":J
    .restart local v14    # "i$iv":I
    :cond_2
    move-object v5, v11

    .line 3672
    .restart local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_3
    move-object v9, v3

    move-object v10, v5

    move v11, v14

    move-wide v12, v6

    move/from16 v16, v14

    .end local v14    # "i$iv":I
    .local v16, "i$iv":I
    move-object v14, v4

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3673
    .local v9, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3674
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_8

    .line 3680
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 3687
    .end local v9    # "updCellResult$iv":Ljava/lang/Object;
    .end local v16    # "i$iv":I
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-gez v9, :cond_4

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3688
    .end local v6    # "r$iv":J
    :cond_4
    goto :goto_1

    .line 3690
    .end local v3    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v4    # "waiter$iv":Ljava/lang/Object;
    .restart local v6    # "r$iv":J
    .restart local v9    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v16    # "i$iv":I
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v9, v3, :cond_7

    .line 3693
    .end local v9    # "updCellResult$iv":Ljava/lang/Object;
    move-object v3, v5

    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v6    # "r$iv":J
    .end local v16    # "i$iv":I
    .local v3, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move/from16 v4, v16

    .local v4, "i":I
    move-wide v5, v6

    .local v5, "r":J
    const/4 v9, 0x0

    .line 739
    .local v9, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->label:I

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v2    # "$this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v3    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v4    # "i":I
    .end local v5    # "r":J
    if-ne v4, v8, :cond_6

    .line 731
    return-object v8

    .line 739
    :cond_6
    move v3, v9

    move v2, v15

    .end local v9    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    .end local v15    # "$i$f$receiveImpl":I
    .local v2, "$i$f$receiveImpl":I
    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    :goto_2
    nop

    .line 3693
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$5":I
    move v15, v2

    move-object v2, v4

    goto :goto_3

    .line 3699
    .end local v2    # "$i$f$receiveImpl":I
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v9, "updCellResult$iv":Ljava/lang/Object;
    .restart local v15    # "$i$f$receiveImpl":I
    :cond_7
    invoke-virtual {v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3701
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-object v2, v9

    .end local v9    # "updCellResult$iv":Ljava/lang/Object;
    .local v2, "element":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 735
    .local v3, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$2":I
    sget-object v4, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 3701
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "$i$a$-receiveImpl-BufferedChannel$receiveCatching$2":I
    :goto_3
    nop

    .line 3673
    nop

    .line 740
    .end local v15    # "$i$f$receiveImpl":I
    :goto_4
    return-object v2

    .line 3677
    .local v3, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v4, "waiter$iv":Ljava/lang/Object;
    .restart local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v6    # "r$iv":J
    .restart local v15    # "$i$f$receiveImpl":I
    .restart local v16    # "i$iv":I
    :cond_8
    nop

    .line 3678
    .end local v3    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v4    # "waiter$iv":Ljava/lang/Object;
    nop

    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v6    # "r$iv":J
    .end local v16    # "i$iv":I
    const/4 v2, 0x0

    .local v2, "$i$a$-receiveImpl-BufferedChannel$receiveCatching$3":I
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 737
    const-string/jumbo v4, "unexpected"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final receiveCatchingOnNoWaiterSuspend-GKJJFZk(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    iget v2, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 742
    iget v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    iget-wide v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->J$0:J

    iget v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->I$0:I

    iget-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 p5, v3

    move-object/from16 v2, p5

    goto/16 :goto_4

    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lkotlinx/coroutines/channels/BufferedChannel;
    move/from16 v11, p2

    .local v11, "index":I
    move-object/from16 v12, p1

    .local v12, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide/from16 v13, p3

    .line 746
    .local v13, "r":J
    const/4 v15, 0x0

    .line 3702
    .local v15, "$i$f$suspendCancellableCoroutineReusable":I
    iput-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->L$1:Ljava/lang/Object;

    iput v11, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->I$0:I

    iput-wide v13, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->J$0:J

    const/4 v5, 0x1

    iput v5, v1, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatchingOnNoWaiterSuspend$1;->label:I

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    .local v5, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v16, 0x0

    .line 3703
    .local v16, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v17

    .line 3704
    .end local v5    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v17, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 3705
    move-object/from16 v10, v17

    .local v10, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/16 v18, 0x0

    .line 747
    .local v18, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2":I
    :try_start_0
    new-instance v5, Lkotlinx/coroutines/channels/ReceiveCatching;

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$35>>"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v10}, Lkotlinx/coroutines/channels/ReceiveCatching;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    move-object/from16 v19, v5

    .line 748
    .local v19, "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    move-object v8, v4

    .local v8, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/16 v26, 0x0

    .line 3706
    .local v26, "$i$f$receiveImplOnNoWaiter":I
    move-object/from16 v20, v19

    check-cast v20, Lkotlinx/coroutines/Waiter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v8

    move-object v6, v12

    move v7, v11

    move-object v2, v8

    .end local v8    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v2, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    move-wide v8, v13

    move-object/from16 p5, v3

    move-object v3, v10

    .end local v10    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local v3, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local p5, "$result":Ljava/lang/Object;
    move-object/from16 v10, v20

    :try_start_1
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3707
    .local v5, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3708
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 3709
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v5    # "updCellResult$iv":Ljava/lang/Object;
    .end local v13    # "r":J
    move-object/from16 v3, v19

    check-cast v3, Lkotlinx/coroutines/Waiter;

    invoke-static {v2, v3, v12, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto/16 :goto_3

    .line 3711
    .end local v11    # "index":I
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v5    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v13    # "r":J
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_d

    .line 3712
    .end local v5    # "updCellResult$iv":Ljava/lang/Object;
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v5

    cmp-long v5, v13, v5

    if-gez v5, :cond_2

    invoke-virtual {v12}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3713
    .end local v12    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v13    # "r":J
    :cond_2
    nop

    .line 3714
    nop

    .line 3715
    nop

    .line 3714
    const/4 v5, 0x0

    .local v5, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    .line 3719
    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3720
    .local v6, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 3723
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x0

    .line 754
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    .local v2, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$2":I
    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v4, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedReceiveCatchingOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3723
    .end local v2    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$2":I
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    goto/16 :goto_3

    .local v2, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v8

    .line 3726
    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    .line 3728
    .local v8, "r$iv$iv":J
    sget v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v10

    div-long v10, v8, v10

    .line 3729
    .local v10, "id$iv$iv":J
    sget v12, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v12, v12

    rem-long v12, v8, v12

    long-to-int v12, v12

    .line 3732
    .local v12, "i$iv$iv":I
    iget-wide v13, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v13, v13, v10

    if-eqz v13, :cond_5

    .line 3734
    invoke-static {v2, v10, v11, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v13

    if-nez v13, :cond_4

    .line 3738
    .end local v8    # "r$iv$iv":J
    .end local v10    # "id$iv$iv":J
    .end local v12    # "i$iv$iv":I
    goto :goto_1

    .line 3734
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "r$iv$iv":J
    .restart local v12    # "i$iv$iv":I
    :cond_4
    move-object v6, v13

    .line 3741
    .restart local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_5
    move-object/from16 v25, v19

    check-cast v25, Lkotlinx/coroutines/Waiter;

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    move/from16 v22, v12

    move-wide/from16 v23, v8

    invoke-static/range {v20 .. v25}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 3742
    .local v10, "updCellResult$iv$iv":Ljava/lang/Object;
    nop

    .line 3743
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    if-ne v10, v11, :cond_8

    .line 3746
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    move-object/from16 v3, v19

    check-cast v3, Lkotlinx/coroutines/Waiter;

    instance-of v3, v3, Lkotlinx/coroutines/Waiter;

    if-eqz v3, :cond_6

    move-object/from16 v7, v19

    check-cast v7, Lkotlinx/coroutines/Waiter;

    nop

    .end local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    :cond_6
    if-eqz v7, :cond_7

    invoke-static {v2, v7, v6, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    nop

    .line 3747
    .end local v2    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_7
    const/4 v2, 0x0

    .line 3748
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "r$iv$iv":J
    .end local v12    # "i$iv$iv":I
    .local v2, "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    nop

    .line 3747
    .end local v2    # "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    goto :goto_2

    .line 3749
    .local v2, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "r$iv$iv":J
    .restart local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .restart local v12    # "i$iv$iv":I
    .restart local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    if-ne v10, v11, :cond_a

    .line 3756
    .end local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .end local v12    # "i$iv$iv":I
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3757
    .end local v8    # "r$iv$iv":J
    :cond_9
    goto :goto_1

    .line 3759
    .end local v2    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v19    # "waiter":Lkotlinx/coroutines/channels/ReceiveCatching;
    .restart local v8    # "r$iv$iv":J
    .restart local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .restart local v12    # "i$iv$iv":I
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v10, v2, :cond_c

    .line 3764
    .end local v8    # "r$iv$iv":J
    .end local v12    # "i$iv$iv":I
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3766
    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-object v2, v10

    .end local v10    # "updCellResult$iv$iv":Ljava/lang/Object;
    .local v2, "element":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 752
    .local v6, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    sget-object v8, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v8, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v8

    iget-object v9, v4, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v9, :cond_b

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v9, v2, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    nop

    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_b
    invoke-virtual {v3, v8, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 753
    nop

    .line 3766
    .end local v6    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    :goto_2
    nop

    .line 3742
    nop

    .end local v5    # "$i$f$receiveImpl":I
    goto :goto_3

    .line 3762
    .restart local v5    # "$i$f$receiveImpl":I
    .local v6, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "r$iv$iv":J
    .restart local v12    # "i$iv$iv":I
    :cond_c
    const/4 v0, 0x0

    .end local v6    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "r$iv$iv":J
    .end local v12    # "i$iv$iv":I
    .local v0, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 3763
    const-string/jumbo v3, "unexpected"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local p5    # "$result":Ljava/lang/Object;
    throw v2

    .line 3767
    .end local v0    # "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v5, "updCellResult$iv":Ljava/lang/Object;
    .local v12, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local p5    # "$result":Ljava/lang/Object;
    :cond_d
    invoke-virtual {v12}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3769
    .end local v12    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-object v2, v5

    .end local v5    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v2    # "element":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 752
    .local v5, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    sget-object v6, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v6, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v6

    iget-object v8, v4, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_e

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v8, v2, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    nop

    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v4    # "this":Lkotlinx/coroutines/channels/BufferedChannel;
    :cond_e
    invoke-virtual {v3, v6, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    nop

    .line 3769
    .end local v5    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2$1":I
    nop

    .line 3772
    :goto_3
    nop

    .line 756
    .end local v26    # "$i$f$receiveImplOnNoWaiter":I
    nop

    .line 3705
    .end local v18    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveCatchingOnNoWaiterSuspend$2":I
    nop

    .line 3779
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 3702
    .end local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_f

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_f
    if-ne v2, v0, :cond_10

    .line 742
    return-object v0

    .line 3702
    :cond_10
    move v0, v15

    .line 3780
    .end local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    :goto_4
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    check-cast v2, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    .line 756
    return-object v0

    .line 3773
    .restart local v15    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v16    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v17    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local p5    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object/from16 p5, v3

    .line 3776
    .end local v3    # "$result":Ljava/lang/Object;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local p5    # "$result":Ljava/lang/Object;
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 3777
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final receiveImpl(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 15
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "onElementRetrieved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onSuspend"    # Lkotlin/jvm/functions/Function3;
    .param p4, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;)TR;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .local v8, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 886
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 887
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 890
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 893
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    .line 895
    .local v9, "r":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v11, v9, v1

    .line 896
    .local v11, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v9, v1

    long-to-int v13, v1

    .line 899
    .local v13, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v11

    if-eqz v1, :cond_2

    .line 901
    invoke-static {p0, v11, v12, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 905
    goto :goto_0

    .line 901
    :cond_1
    move-object v0, v1

    move-object v14, v0

    goto :goto_1

    .line 899
    :cond_2
    move-object v14, v0

    .line 908
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v14, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v0, p0

    move-object v1, v14

    move v2, v13

    move-wide v3, v9

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 909
    .local v0, "updCellResult":Ljava/lang/Object;
    nop

    .line 910
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 913
    instance-of v1, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_3

    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    invoke-static {p0, v1, v14, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 914
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v3, v14, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, p5

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_3

    .line 916
    :cond_5
    move-object/from16 v3, p3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 923
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_6

    invoke-virtual {v14}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 924
    :cond_6
    move-object v0, v14

    goto :goto_0

    .line 926
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 929
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v4, p5

    invoke-interface {v4, v14, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_3

    .line 935
    :cond_8
    move-object/from16 v4, p5

    invoke-virtual {v14}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 937
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 909
    :goto_3
    return-object v2
.end method

.method static synthetic receiveImpl$default(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "onElementRetrieved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onSuspend"    # Lkotlin/jvm/functions/Function3;
    .param p4, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function3;

    .line 858
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-nez p7, :cond_a

    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    .line 882
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    move-object v8, v0

    .end local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .local v0, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 858
    .end local v0    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .restart local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v8, p5

    .end local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .local v8, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    :goto_0
    const/4 v9, 0x0

    .local v9, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 886
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 887
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 890
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 893
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    .line 895
    .local v10, "r":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v12, v10, v1

    .line 896
    .local v12, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v10, v1

    long-to-int v14, v1

    .line 899
    .local v14, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_3

    .line 901
    invoke-static {v6, v12, v13, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 905
    goto :goto_1

    .line 901
    :cond_2
    move-object v0, v1

    move-object v15, v0

    goto :goto_2

    .line 899
    :cond_3
    move-object v15, v0

    .line 908
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v15, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-wide v3, v10

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 909
    .local v0, "updCellResult":Ljava/lang/Object;
    nop

    .line 910
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 913
    instance-of v1, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_4

    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    invoke-static {v6, v1, v15, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 914
    :cond_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v3, v15, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_4

    .line 916
    :cond_6
    move-object/from16 v3, p3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 923
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_7

    invoke-virtual {v15}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 924
    :cond_7
    move-object v0, v15

    goto :goto_1

    .line 926
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 929
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v15, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p2

    goto :goto_4

    .line 935
    :cond_9
    invoke-virtual {v15}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 937
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 909
    :goto_4
    return-object v2

    .line 858
    .end local v0    # "updCellResult":Ljava/lang/Object;
    .end local v8    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    .end local v9    # "$i$f$receiveImpl":I
    .end local v10    # "r":J
    .end local v12    # "id":J
    .end local v14    # "i":I
    .end local v15    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p5    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function3;
    :cond_a
    move-object/from16 v1, p2

    move-object/from16 v3, p3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Super calls with default arguments not supported in this target, function: receiveImpl"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final receiveImplOnNoWaiter(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 19
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Lkotlinx/coroutines/Waiter;
    .param p6, "onElementRetrieved"    # Lkotlin/jvm/functions/Function1;
    .param p7, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    const/4 v9, 0x0

    .line 964
    .local v9, "$i$f$receiveImplOnNoWaiter":I
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 965
    .local v10, "updCellResult":Ljava/lang/Object;
    nop

    .line 966
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v10, v0, :cond_0

    .line 967
    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-static {v6, v7, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    move/from16 v16, v9

    goto/16 :goto_5

    .line 969
    :cond_0
    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v10, v0, :cond_b

    .line 970
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 971
    :cond_1
    nop

    .line 3835
    nop

    .line 3836
    nop

    .line 3835
    const/4 v13, 0x0

    .local v13, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3840
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3841
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3844
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move/from16 v16, v9

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3847
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v14

    .line 3849
    .local v14, "r$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v3, v14, v1

    .line 3850
    .local v3, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v5, v1

    .line 3853
    .local v5, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 3855
    invoke-static {v6, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3859
    goto :goto_0

    .line 3855
    :cond_3
    move-object v0, v1

    move-object v2, v0

    goto :goto_1

    .line 3853
    :cond_4
    move-object v2, v0

    .line 3862
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v2, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v2

    move/from16 v16, v9

    move-object v9, v2

    .end local v2    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v9, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v16, "$i$f$receiveImplOnNoWaiter":I
    move v2, v5

    move-wide/from16 v17, v3

    .end local v3    # "id$iv":J
    .local v17, "id$iv":J
    move-wide v3, v14

    move v11, v5

    .end local v5    # "i$iv":I
    .local v11, "i$iv":I
    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3863
    .local v0, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3864
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 3867
    instance-of v1, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_5

    move-object v1, v7

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {v6, v1, v9, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3868
    :cond_6
    const/4 v1, 0x0

    .line 974
    .local v1, "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1":I
    nop

    .end local v1    # "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3868
    goto :goto_3

    .line 3870
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 3877
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v14, v1

    if-gez v1, :cond_8

    invoke-virtual {v9}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3878
    :cond_8
    move-object/from16 v11, p1

    move-object v0, v9

    move/from16 v9, v16

    goto :goto_0

    .line 3880
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    .line 3885
    invoke-virtual {v9}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3887
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3863
    :goto_3
    nop

    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v9    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "i$iv":I
    .end local v13    # "$i$f$receiveImpl":I
    .end local v14    # "r$iv":J
    .end local v17    # "id$iv":J
    :goto_4
    goto :goto_5

    .line 3883
    .restart local v0    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v9    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v11    # "i$iv":I
    .restart local v13    # "$i$f$receiveImpl":I
    .restart local v14    # "r$iv":J
    .restart local v17    # "id$iv":J
    :cond_a
    const/4 v1, 0x0

    .local v1, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 3884
    const-string/jumbo v3, "unexpected"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    .end local v11    # "i$iv":I
    .end local v13    # "$i$f$receiveImpl":I
    .end local v14    # "r$iv":J
    .end local v16    # "$i$f$receiveImplOnNoWaiter":I
    .end local v17    # "id$iv":J
    .local v9, "$i$f$receiveImplOnNoWaiter":I
    :cond_b
    move/from16 v16, v9

    .end local v9    # "$i$f$receiveImplOnNoWaiter":I
    .restart local v16    # "$i$f$receiveImplOnNoWaiter":I
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 981
    invoke-interface {v8, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :goto_5
    return-void
.end method

.method private final receiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 695
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 3571
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    move-object/from16 v3, p5

    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 3572
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v5

    .line 3573
    .local v5, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 3574
    move-object v0, v5

    .local v0, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v6, 0x0

    .line 696
    .local v6, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    move-object/from16 v13, p0

    .local v13, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v14, 0x0

    .line 3575
    .local v14, "$i$f$receiveImplOnNoWaiter":I
    :try_start_0
    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/Waiter;

    move-object v7, v13

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    .line 3576
    .local v15, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3577
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-ne v15, v7, :cond_0

    .line 3578
    :try_start_1
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/Waiter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v12, p1

    move/from16 v10, p2

    :try_start_2
    invoke-static {v13, v7, v12, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto/16 :goto_4

    .line 3642
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .end local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v14    # "$i$f$receiveImplOnNoWaiter":I
    .end local v15    # "updCellResult$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v12, p1

    move/from16 v10, p2

    :goto_0
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto/16 :goto_5

    .line 3580
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .restart local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v14    # "$i$f$receiveImplOnNoWaiter":I
    .restart local v15    # "updCellResult$iv":Ljava/lang/Object;
    :cond_0
    move-object/from16 v12, p1

    move/from16 v10, p2

    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    const/16 v16, 0x0

    if-ne v15, v7, :cond_c

    .line 3581
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    cmp-long v7, p3, v7

    if-gez v7, :cond_1

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3582
    :cond_1
    nop

    .line 3583
    nop

    .line 3584
    nop

    .line 3583
    const/16 v17, 0x0

    .local v17, "$i$f$receiveImpl":I
    :try_start_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    .line 3588
    invoke-virtual {v7, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3589
    .local v7, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 3592
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    .line 711
    .local v8, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$2":I
    :try_start_6
    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedReceiveOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3592
    .end local v8    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$2":I
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto/16 :goto_4

    :cond_2
    :try_start_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v8

    .line 3595
    invoke-virtual {v8, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    move-wide/from16 v18, v8

    .line 3597
    .local v18, "r$iv$iv":J
    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v8, v8

    div-long v8, v18, v8

    .line 3598
    .local v8, "id$iv$iv":J
    sget v11, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v20, "$i$f$suspendCancellableCoroutineReusable":I
    .local v21, "uCont$iv":Lkotlin/coroutines/Continuation;
    int-to-long v2, v11

    :try_start_8
    rem-long v2, v18, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    long-to-int v2, v2

    .line 3601
    .local v2, "i$iv$iv":I
    move/from16 v22, v4

    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v22, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :try_start_9
    iget-wide v3, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_4

    .line 3603
    invoke-static {v13, v8, v9, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3607
    move/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    goto :goto_1

    .line 3603
    .end local v7    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v3, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_3
    goto :goto_2

    .line 3601
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v7    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_4
    move-object v3, v7

    .line 3610
    .end local v7    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/Waiter;

    move-object v7, v13

    move-wide/from16 v23, v8

    .end local v8    # "id$iv$iv":J
    .local v23, "id$iv$iv":J
    move-object v8, v3

    move v9, v2

    move-wide/from16 v10, v18

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3611
    .local v4, "updCellResult$iv$iv":Ljava/lang/Object;
    nop

    .line 3612
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-ne v4, v7, :cond_7

    .line 3615
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/Waiter;

    instance-of v7, v7, Lkotlinx/coroutines/Waiter;

    if-eqz v7, :cond_5

    move-object/from16 v16, v0

    check-cast v16, Lkotlinx/coroutines/Waiter;

    :cond_5
    move-object/from16 v7, v16

    if-eqz v7, :cond_6

    invoke-static {v13, v7, v3, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3616
    :cond_6
    const/4 v7, 0x0

    .line 3617
    .local v7, "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    nop

    .line 3616
    .end local v7    # "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    goto :goto_3

    .line 3618
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-ne v4, v7, :cond_9

    .line 3625
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v7

    cmp-long v7, v18, v7

    if-gez v7, :cond_8

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3626
    :cond_8
    move-object/from16 v12, p1

    move/from16 v10, p2

    move-object v7, v3

    move/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    goto/16 :goto_1

    .line 3628
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-eq v4, v7, :cond_b

    .line 3633
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3635
    move-object v7, v4

    .local v7, "element":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 708
    .local v8, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    iget-object v9, v1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v16

    :cond_a
    move-object/from16 v9, v16

    .line 709
    .local v9, "onCancellation":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v0, v7, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 710
    nop

    .line 3635
    .end local v7    # "element":Ljava/lang/Object;
    .end local v8    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    .end local v9    # "onCancellation":Lkotlin/jvm/functions/Function1;
    :goto_3
    nop

    .line 3611
    nop

    .end local v2    # "i$iv$iv":I
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v4    # "updCellResult$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$receiveImpl":I
    .end local v18    # "r$iv$iv":J
    .end local v23    # "id$iv$iv":J
    goto :goto_4

    .line 3631
    .restart local v2    # "i$iv$iv":I
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "updCellResult$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$receiveImpl":I
    .restart local v18    # "r$iv$iv":J
    .restart local v23    # "id$iv$iv":J
    :cond_b
    const/4 v7, 0x0

    .local v7, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 3632
    const-string/jumbo v9, "unexpected"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local p2    # "index":I
    .end local p3    # "r":J
    .end local p5    # "$completion":Lkotlin/coroutines/Continuation;
    throw v8

    .line 3642
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v2    # "i$iv$iv":I
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .end local v7    # "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    .end local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v14    # "$i$f$receiveImplOnNoWaiter":I
    .end local v15    # "updCellResult$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$receiveImpl":I
    .end local v18    # "r$iv$iv":J
    .end local v23    # "id$iv$iv":J
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p2    # "index":I
    .restart local p3    # "r":J
    .restart local p5    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception v0

    move/from16 v22, v4

    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    goto :goto_5

    .line 3636
    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    .restart local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v14    # "$i$f$receiveImplOnNoWaiter":I
    .restart local v15    # "updCellResult$iv":Ljava/lang/Object;
    :cond_c
    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3638
    move-object v2, v15

    .local v2, "element":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 708
    .local v3, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v4, v2, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v16

    :cond_d
    move-object/from16 v4, v16

    .line 709
    .local v4, "onCancellation":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v0, v2, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 710
    nop

    .line 3638
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$receiveOnNoWaiterSuspend$2$1":I
    .end local v4    # "onCancellation":Lkotlin/jvm/functions/Function1;
    nop

    .line 3641
    :goto_4
    nop

    .line 713
    .end local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v14    # "$i$f$receiveImplOnNoWaiter":I
    .end local v15    # "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3574
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v6    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$receiveOnNoWaiterSuspend$2":I
    nop

    .line 3648
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3571
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_e

    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 3649
    :cond_e
    nop

    .line 713
    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    return-object v0

    .line 3642
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :catchall_3
    move-exception v0

    goto :goto_5

    .end local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :catchall_4
    move-exception v0

    move/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    .line 3645
    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v20    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v22    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :goto_5
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 3646
    throw v0
.end method

.method private final registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 13
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1512
    nop

    .line 3978
    nop

    .line 3979
    nop

    .line 3978
    const/4 v0, 0x0

    .local v0, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 3983
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3984
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3987
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1516
    .local v2, "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$3":I
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnReceive(Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 3987
    .end local v2    # "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$3":I
    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 3990
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    .line 3992
    .local v9, "r$iv":J
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    div-long v11, v9, v2

    .line 3993
    .local v11, "id$iv":J
    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    rem-long v2, v9, v2

    long-to-int v2, v2

    .line 3996
    .local v2, "i$iv":I
    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v11

    if-eqz v3, :cond_2

    .line 3998
    invoke-static {p0, v11, v12, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4002
    goto :goto_0

    .line 3998
    :cond_1
    move-object v1, v3

    .line 4005
    :cond_2
    move-object v3, p0

    move-object v4, v1

    move v5, v2

    move-wide v6, v9

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4006
    .local v3, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 4007
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 4010
    instance-of v4, p1, Lkotlinx/coroutines/Waiter;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/Waiter;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    invoke-static {p0, v4, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 4011
    :cond_4
    const/4 v4, 0x0

    .line 1515
    .local v4, "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$2":I
    nop

    .line 4011
    .end local v4    # "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$2":I
    goto :goto_2

    .line 4013
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v3, v4, :cond_7

    .line 4020
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v4

    cmp-long v4, v9, v4

    if-gez v4, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 4021
    :cond_6
    goto :goto_0

    .line 4023
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 4028
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 4030
    move-object v4, v3

    .local v4, "elem":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1514
    .local v5, "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$1":I
    invoke-interface {p1, v4}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 4030
    .end local v4    # "elem":Ljava/lang/Object;
    .end local v5    # "$i$a$-receiveImpl$default-BufferedChannel$registerSelectForReceive$1":I
    :goto_2
    nop

    .line 4006
    nop

    .line 1517
    .end local v0    # "$i$f$receiveImpl":I
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "i$iv":I
    .end local v3    # "updCellResult$iv":Ljava/lang/Object;
    .end local v9    # "r$iv":J
    .end local v11    # "id$iv":J
    :goto_3
    return-void

    .line 4026
    .restart local v0    # "$i$f$receiveImpl":I
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v2    # "i$iv":I
    .restart local v3    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v9    # "r$iv":J
    .restart local v11    # "id$iv":J
    :cond_8
    const/4 v4, 0x0

    .local v4, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 4027
    const-string/jumbo v6, "unexpected"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private final removeUnprocessedElements(Lkotlinx/coroutines/channels/ChannelSegment;)V
    .locals 12
    .param p1, "lastSegment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)V"
        }
    .end annotation

    .line 2013
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2014
    .local v0, "onUndeliveredElement":Lkotlin/jvm/functions/Function1;
    const/4 v1, 0x0

    .line 2021
    .local v1, "undeliveredElementException":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v2

    .line 2022
    .local v2, "suspendedSenders":Ljava/lang/Object;
    move-object v4, p1

    .line 2023
    .local v4, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 2024
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    sub-int/2addr v5, v3

    .local v5, "index":I
    :goto_1
    const/4 v6, -0x1

    if-ge v6, v5, :cond_a

    .line 2026
    iget-wide v7, v4, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    int-to-long v9, v5

    add-long/2addr v7, v9

    .line 2028
    .local v7, "globalIndex":J
    :cond_0
    nop

    .line 2030
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v9

    .line 2031
    .local v9, "state":Ljava/lang/Object;
    nop

    .line 2033
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_b

    .line 2035
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v9, v10, :cond_2

    .line 2037
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-ltz v10, :cond_b

    .line 2039
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    invoke-virtual {v4, v5, v9, v10}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2041
    if-eqz v0, :cond_1

    .line 2042
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v6

    .line 2043
    .local v6, "element":Ljava/lang/Object;
    invoke-static {v0, v6, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    .line 2047
    .end local v6    # "element":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 2048
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2049
    goto/16 :goto_5

    .line 2053
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_9

    if-nez v9, :cond_3

    goto :goto_4

    .line 2062
    :cond_3
    instance-of v10, v9, Lkotlinx/coroutines/Waiter;

    if-nez v10, :cond_6

    instance-of v10, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v10, :cond_4

    goto :goto_2

    .line 2086
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_b

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-ne v9, v10, :cond_5

    goto :goto_6

    .line 2089
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    if-eq v9, v10, :cond_0

    .line 2090
    goto :goto_5

    .line 2064
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-ltz v10, :cond_b

    .line 2066
    instance-of v10, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v10, :cond_7

    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v10, v10, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_3

    .line 2067
    :cond_7
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/Waiter;

    .line 2066
    :goto_3
    nop

    .line 2069
    .local v10, "sender":Lkotlinx/coroutines/Waiter;
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    invoke-virtual {v4, v5, v9, v11}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2071
    if-eqz v0, :cond_8

    .line 2072
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v6

    .line 2073
    .restart local v6    # "element":Ljava/lang/Object;
    invoke-static {v0, v6, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    .line 2076
    .end local v6    # "element":Ljava/lang/Object;
    :cond_8
    invoke-static {v2, v10}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2079
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 2080
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2081
    goto :goto_5

    .line 2055
    .end local v10    # "sender":Lkotlinx/coroutines/Waiter;
    :cond_9
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v10

    invoke-virtual {v4, v5, v9, v10}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2057
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 2058
    nop

    .line 2024
    .end local v7    # "globalIndex":J
    .end local v9    # "state":Ljava/lang/Object;
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 2095
    .end local v5    # "index":I
    :cond_a
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v5, :cond_10

    .line 2098
    :cond_b
    :goto_6
    const/4 v5, 0x0

    .line 4037
    .local v5, "$i$f$forEachReversed-impl":I
    nop

    .line 4038
    if-eqz v2, :cond_e

    .line 4039
    instance-of v7, v2, Ljava/util/ArrayList;

    if-nez v7, :cond_c

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/Waiter;

    .local v3, "it":Lkotlinx/coroutines/Waiter;
    const/4 v6, 0x0

    .line 2098
    .local v6, "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeSenderOnCancelledChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4039
    .end local v3    # "it":Lkotlinx/coroutines/Waiter;
    .end local v6    # "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    goto :goto_8

    .line 4041
    :cond_c
    const-string v7, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    .line 4042
    .local v7, "list$iv":Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "i$iv":I
    :goto_7
    if-ge v6, v8, :cond_d

    .line 4043
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/Waiter;

    .restart local v3    # "it":Lkotlinx/coroutines/Waiter;
    const/4 v9, 0x0

    .line 2098
    .local v9, "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    invoke-direct {p0, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeSenderOnCancelledChannel(Lkotlinx/coroutines/Waiter;)V

    .line 4043
    .end local v3    # "it":Lkotlinx/coroutines/Waiter;
    .end local v9    # "$i$a$-forEachReversed-impl-BufferedChannel$removeUnprocessedElements$1":I
    nop

    .line 4042
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 4047
    .end local v7    # "list$iv":Ljava/util/ArrayList;
    .end local v8    # "i$iv":I
    :cond_d
    :goto_8
    nop

    .line 2100
    .end local v5    # "$i$f$forEachReversed-impl":I
    :cond_e
    if-nez v1, :cond_f

    .line 2101
    return-void

    .line 2100
    :cond_f
    move-object v3, v1

    .line 3056
    .local v3, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v5, 0x0

    .line 2100
    .local v5, "$i$a$-let-BufferedChannel$removeUnprocessedElements$2":I
    throw v3

    .line 2095
    .end local v3    # "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    .end local v5    # "$i$a$-let-BufferedChannel$removeUnprocessedElements$2":I
    :cond_10
    move-object v4, v5

    goto/16 :goto_0
.end method

.method private final resumeReceiverOnClosedChannel(Lkotlinx/coroutines/Waiter;)V
    .locals 1
    .param p1, "$this$resumeReceiverOnClosedChannel"    # Lkotlinx/coroutines/Waiter;

    .line 2160
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    return-void
.end method

.method private final resumeSenderOnCancelledChannel(Lkotlinx/coroutines/Waiter;)V
    .locals 1
    .param p1, "$this$resumeSenderOnCancelledChannel"    # Lkotlinx/coroutines/Waiter;

    .line 2166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    return-void
.end method

.method private final resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V
    .locals 3
    .param p1, "$this$resumeWaiterOnClosedChannel"    # Lkotlinx/coroutines/Waiter;
    .param p2, "receiver"    # Z

    .line 2169
    nop

    .line 2170
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;->getCont()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2171
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2172
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/ReceiveCatching;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveCatching;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ReceiveCatching;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2173
    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->tryResumeHasNextOnClosedChannel()V

    goto :goto_1

    .line 2174
    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2177
    :goto_1
    return-void

    .line 2174
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected waiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic send$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 113
    nop

    .line 117
    nop

    .line 113
    const/4 v6, 0x0

    .local v6, "waiter$iv":Ljava/lang/Object;
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v9, 0x0

    .local v9, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3058
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3059
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3062
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    .line 3063
    .local v10, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v10

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3064
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 3063
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide/from16 v19, v1

    .line 3065
    .local v19, "s$iv":J
    invoke-static {v8, v10, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v21

    .line 3067
    .local v21, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v12, v19, v1

    .line 3068
    .local v12, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v19, v1

    long-to-int v15, v1

    .line 3071
    .local v15, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_3

    .line 3073
    invoke-static {v8, v12, v13, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3080
    if-eqz v21, :cond_1

    .line 3081
    const/4 v1, 0x0

    .line 126
    .local v1, "$i$a$-sendImpl-BufferedChannel$send$4":I
    invoke-direct/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    return-object v2

    .line 3081
    :cond_0
    nop

    .end local v1    # "$i$a$-sendImpl-BufferedChannel$send$4":I
    goto/16 :goto_2

    .line 3083
    :cond_1
    goto :goto_0

    .line 3073
    :cond_2
    move-object v0, v1

    move-object/from16 v22, v0

    goto :goto_1

    .line 3071
    :cond_3
    move-object/from16 v22, v0

    .line 3089
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v22, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v0, v8

    move-object/from16 v1, v22

    move v2, v15

    move-object/from16 v3, p1

    move-wide/from16 v4, v19

    move/from16 v7, v21

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-wide v1, v12

    move v0, v15

    .line 3132
    .end local v10    # "sendersAndCloseStatusCur$iv":J
    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .end local v19    # "s$iv":J
    .end local v21    # "closed$iv":Z
    goto/16 :goto_3

    .line 3126
    .restart local v10    # "sendersAndCloseStatusCur$iv":J
    .restart local v12    # "id$iv":J
    .restart local v15    # "i$iv":I
    .restart local v19    # "s$iv":J
    .restart local v21    # "closed$iv":Z
    :pswitch_0
    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3127
    goto/16 :goto_3

    .line 3119
    :pswitch_1
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v19, v0

    if-gez v0, :cond_4

    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3120
    :cond_4
    const/4 v0, 0x0

    .line 126
    .local v0, "$i$a$-sendImpl-BufferedChannel$send$4":I
    invoke-direct/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    return-object v1

    .line 3120
    :cond_5
    nop

    .end local v0    # "$i$a$-sendImpl-BufferedChannel$send$4":I
    goto :goto_2

    .line 3132
    :pswitch_2
    move-object/from16 v0, v22

    .local v0, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move v14, v15

    move-wide v1, v12

    .end local v12    # "id$iv":J
    .local v1, "id$iv":J
    .local v14, "i":I
    move-object v13, v0

    .end local v0    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v13, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide/from16 v16, v19

    move v0, v15

    .end local v15    # "i$iv":I
    .local v0, "i$iv":I
    .local v16, "s":J
    move-object/from16 v15, p1

    .local v15, "elem":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 130
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$5":I
    move-object/from16 v12, p0

    move-object/from16 v18, p2

    invoke-direct/range {v12 .. v18}, Lkotlinx/coroutines/channels/BufferedChannel;->sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_6

    return-object v4

    .line 3132
    :cond_6
    nop

    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$5":I
    .end local v13    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v14    # "i":I
    .end local v15    # "elem":Ljava/lang/Object;
    .end local v16    # "s":J
    goto :goto_2

    .line 3107
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .restart local v12    # "id$iv":J
    .local v15, "i$iv":I
    :pswitch_3
    move-wide v1, v12

    move v0, v15

    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .restart local v0    # "i$iv":I
    .restart local v1    # "id$iv":J
    if-eqz v21, :cond_8

    .line 3108
    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3109
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$4":I
    invoke-direct/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_7

    return-object v4

    .line 3109
    :cond_7
    nop

    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$4":I
    goto :goto_2

    .line 3111
    :cond_8
    nop

    .line 3112
    const/4 v3, 0x0

    .line 122
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$3":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3112
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$3":I
    goto :goto_2

    .line 3056
    .restart local v3    # "$i$a$-sendImpl-BufferedChannel$send$3":I
    :cond_9
    const/4 v4, 0x0

    .line 122
    .local v4, "$i$a$-assert-BufferedChannel$send$3$1":I
    nop

    .end local v4    # "$i$a$-assert-BufferedChannel$send$3$1":I
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3100
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$3":I
    .restart local v12    # "id$iv":J
    .restart local v15    # "i$iv":I
    :pswitch_4
    move-wide v1, v12

    move v0, v15

    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .restart local v0    # "i$iv":I
    .restart local v1    # "id$iv":J
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$a$-sendImpl-BufferedChannel$send$2":I
    nop

    .line 3100
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$2":I
    goto :goto_2

    .line 3095
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .restart local v12    # "id$iv":J
    .restart local v15    # "i$iv":I
    :pswitch_5
    move-wide v1, v12

    move v0, v15

    .end local v12    # "id$iv":J
    .end local v15    # "i$iv":I
    .restart local v0    # "i$iv":I
    .restart local v1    # "id$iv":J
    invoke-virtual/range {v22 .. v22}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3096
    const/4 v3, 0x0

    .line 120
    .restart local v3    # "$i$a$-sendImpl-BufferedChannel$send$2":I
    nop

    .line 3096
    .end local v3    # "$i$a$-sendImpl-BufferedChannel$send$2":I
    nop

    .line 3132
    .end local v0    # "i$iv":I
    .end local v1    # "id$iv":J
    .end local v6    # "waiter$iv":Ljava/lang/Object;
    .end local v8    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v9    # "$i$f$sendImpl":I
    .end local v10    # "sendersAndCloseStatusCur$iv":J
    .end local v19    # "s$iv":J
    .end local v21    # "closed$iv":Z
    .end local v22    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    return-object v0

    .line 3059
    .restart local v6    # "waiter$iv":Ljava/lang/Object;
    .restart local v8    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v9    # "$i$f$sendImpl":I
    .restart local v22    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    move-object/from16 v0, v22

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic sendBroadcast$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    move-object/from16 v8, p0

    const/4 v9, 0x0

    .line 3344
    .local v9, "$i$f$suspendCancellableCoroutine":I
    move-object/from16 v10, p2

    .local v10, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v11, 0x0

    .line 3345
    .local v11, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v10}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v12, 0x1

    invoke-direct {v0, v1, v12}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v13, v0

    .line 3351
    .local v13, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v13}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3352
    move-object v14, v13

    check-cast v14, Lkotlinx/coroutines/CancellableContinuation;

    .local v14, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v15, 0x0

    .line 222
    .local v15, "$i$a$-suspendCancellableCoroutine-BufferedChannel$sendBroadcast$2":I
    iget-object v0, v8, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x0

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_0
    if-eqz v0, :cond_9

    .line 227
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    invoke-direct {v0, v14}, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    .line 225
    move-object v7, v0

    .line 3353
    .local v7, "waiter$iv":Ljava/lang/Object;
    nop

    .line 3354
    nop

    .line 3353
    const/16 v17, 0x0

    .local v17, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3358
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3359
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3362
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    .line 3363
    .local v4, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v4

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3364
    .local v3, "$i$f$getSendersCounter":I
    const-wide v18, 0xfffffffffffffffL

    and-long v1, v1, v18

    .line 3363
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide/from16 v18, v1

    .line 3365
    .local v18, "s$iv":J
    invoke-static {v8, v4, v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v20

    .line 3367
    .local v20, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v2, v18, v1

    .line 3368
    .local v2, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move-object/from16 v21, v13

    .end local v13    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .local v21, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    int-to-long v12, v1

    rem-long v12, v18, v12

    long-to-int v12, v12

    .line 3371
    .local v12, "i$iv":I
    move-wide/from16 v22, v4

    .end local v4    # "sendersAndCloseStatusCur$iv":J
    .local v22, "sendersAndCloseStatusCur$iv":J
    iget-wide v4, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 3373
    invoke-static {v8, v2, v3, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3380
    if-eqz v20, :cond_1

    .line 3381
    const/4 v1, 0x0

    .line 230
    .local v1, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move-object v4, v14

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3381
    .end local v1    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move/from16 v26, v9

    goto/16 :goto_4

    .line 3383
    :cond_1
    move-object/from16 v13, v21

    const/4 v12, 0x1

    goto :goto_1

    .line 3373
    :cond_2
    move-object v0, v1

    move-object v13, v0

    goto :goto_2

    .line 3371
    :cond_3
    move-object v13, v0

    .line 3389
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v13, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v24, v2

    .end local v2    # "id$iv":J
    .local v24, "id$iv":J
    move v2, v12

    move-object/from16 v3, p1

    move-wide/from16 v4, v18

    move-object v6, v7

    move/from16 v26, v9

    move-object v9, v7

    .end local v7    # "waiter$iv":Ljava/lang/Object;
    .local v9, "waiter$iv":Ljava/lang/Object;
    .local v26, "$i$f$suspendCancellableCoroutine":I
    move/from16 v7, v20

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x1

    .line 3433
    .end local v12    # "i$iv":I
    .end local v18    # "s$iv":J
    .end local v20    # "closed$iv":Z
    .end local v22    # "sendersAndCloseStatusCur$iv":J
    .end local v24    # "id$iv":J
    goto/16 :goto_5

    .line 3426
    .restart local v12    # "i$iv":I
    .restart local v18    # "s$iv":J
    .restart local v20    # "closed$iv":Z
    .restart local v22    # "sendersAndCloseStatusCur$iv":J
    .restart local v24    # "id$iv":J
    :pswitch_0
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3427
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 3419
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v18, v0

    if-gez v0, :cond_4

    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3420
    :cond_4
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3420
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    goto :goto_4

    .line 3432
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3433
    const-string/jumbo v2, "unexpected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3407
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v20, :cond_5

    .line 3408
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3409
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3409
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$4":I
    goto :goto_4

    .line 3411
    :cond_5
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_6

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {v8, v0, v13, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3412
    :cond_7
    const/4 v0, 0x0

    .line 229
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$3":I
    nop

    .line 3412
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$3":I
    goto :goto_4

    .line 3400
    :pswitch_4
    const/4 v0, 0x0

    .line 228
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3400
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    goto :goto_4

    .line 3395
    :pswitch_5
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3396
    const/4 v0, 0x0

    .line 228
    .restart local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    move-object v1, v14

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3396
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendBroadcast$2$2":I
    nop

    .line 232
    .end local v9    # "waiter$iv":Ljava/lang/Object;
    .end local v12    # "i$iv":I
    .end local v13    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v17    # "$i$f$sendImpl":I
    .end local v18    # "s$iv":J
    .end local v20    # "closed$iv":Z
    .end local v22    # "sendersAndCloseStatusCur$iv":J
    .end local v24    # "id$iv":J
    :goto_4
    nop

    .line 3352
    .end local v14    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v15    # "$i$a$-suspendCancellableCoroutine-BufferedChannel$sendBroadcast$2":I
    nop

    .line 3434
    invoke-virtual/range {v21 .. v21}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3344
    .end local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v11    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v21    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_8

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 3435
    :cond_8
    nop

    .line 232
    .end local v26    # "$i$f$suspendCancellableCoroutine":I
    return-object v0

    .line 3359
    .restart local v9    # "waiter$iv":Ljava/lang/Object;
    .restart local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v11    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .restart local v13    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v14    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .restart local v15    # "$i$a$-suspendCancellableCoroutine-BufferedChannel$sendBroadcast$2":I
    .restart local v17    # "$i$f$sendImpl":I
    .restart local v21    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v26    # "$i$f$suspendCancellableCoroutine":I
    :goto_5
    move v12, v2

    move-object v7, v9

    move-object v0, v13

    move-object/from16 v13, v21

    move/from16 v9, v26

    goto/16 :goto_1

    .line 222
    .end local v17    # "$i$f$sendImpl":I
    .end local v21    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v26    # "$i$f$suspendCancellableCoroutine":I
    .local v9, "$i$f$suspendCancellableCoroutine":I
    .local v13, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :cond_9
    const/4 v0, 0x0

    .line 223
    .local v0, "$i$a$-check-BufferedChannel$sendBroadcast$2$1":I
    nop

    .line 222
    .end local v0    # "$i$a$-check-BufferedChannel$sendBroadcast$2$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic sendImpl$default(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "waiter"    # Ljava/lang/Object;
    .param p3, "onRendezvousOrBuffered"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onSuspend"    # Lkotlin/jvm/functions/Function2;
    .param p5, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p6, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function4;

    .line 244
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    if-nez p8, :cond_8

    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$sendImpl$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$sendImpl$1;

    check-cast v0, Lkotlin/jvm/functions/Function4;

    move-object v10, v0

    .end local p6    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .local v0, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    goto :goto_0

    .line 244
    .end local v0    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .restart local p6    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    :cond_0
    move-object/from16 v10, p6

    .end local p6    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .local v10, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    :goto_0
    const/4 v11, 0x0

    .local v11, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 274
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v12

    .line 278
    .local v12, "sendersAndCloseStatusCur":J
    move-wide v1, v12

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 3436
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 278
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v14, v1

    .line 280
    .local v14, "s":J
    invoke-static {v8, v12, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v16

    .line 282
    .local v16, "closed":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v14, v1

    .line 283
    .local v6, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v4, v1

    .line 286
    .local v4, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 288
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 295
    if-eqz v16, :cond_1

    .line 296
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 298
    :cond_1
    goto :goto_1

    .line 288
    :cond_2
    move-object v0, v1

    move-object v5, v0

    goto :goto_2

    .line 286
    :cond_3
    move-object v5, v0

    .line 304
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p1

    move/from16 p6, v4

    move-object/from16 p7, v5

    .end local v4    # "i":I
    .end local v5    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local p6, "i":I
    .local p7, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v14

    move-wide/from16 v17, v6

    .end local v6    # "id":J
    .local v17, "id":J
    move-object/from16 v6, p2

    move/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    move/from16 v1, p6

    move-object/from16 v3, p7

    .line 347
    .end local v12    # "sendersAndCloseStatusCur":J
    .end local v14    # "s":J
    .end local v16    # "closed":Z
    .end local v17    # "id":J
    .end local p6    # "i":I
    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v3, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto :goto_5

    .line 341
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v12    # "sendersAndCloseStatusCur":J
    .restart local v14    # "s":J
    .restart local v16    # "closed":Z
    .restart local v17    # "id":J
    .restart local p6    # "i":I
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_0
    invoke-virtual/range {p7 .. p7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 342
    move-object/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v3, p7

    goto :goto_5

    .line 334
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v14, v0

    if-gez v0, :cond_4

    invoke-virtual/range {p7 .. p7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 335
    :cond_4
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_2
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-interface {v10, v3, v0, v2, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 322
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_3
    move-object/from16 v2, p1

    move-object/from16 v3, p7

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    if-eqz v16, :cond_5

    .line 323
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 324
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 326
    :cond_5
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_6

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    move/from16 v1, p6

    .end local p6    # "i":I
    .local v1, "i":I
    invoke-static {v8, v0, v3, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_4

    .end local v1    # "i":I
    .restart local p6    # "i":I
    :cond_7
    move/from16 v1, p6

    .line 327
    .end local p6    # "i":I
    .restart local v1    # "i":I
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, p4

    invoke-interface {v4, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 315
    .end local v1    # "i":I
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p6    # "i":I
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_5
    move-object/from16 v3, p7

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 311
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 274
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "sendersAndCloseStatusCur":J
    .end local v14    # "s":J
    .end local v16    # "closed":Z
    .end local v17    # "id":J
    .end local p6    # "i":I
    .restart local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v3

    .end local p7    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_1

    .line 244
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    .end local v11    # "$i$f$sendImpl":I
    .local p6, "onNoWaiterSuspend":Lkotlin/jvm/functions/Function4;
    :cond_8
    move-object/from16 v2, p1

    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: sendImpl"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final sendImplOnNoWaiter(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 22
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Lkotlinx/coroutines/Waiter;
    .param p7, "onRendezvousOrBuffered"    # Lkotlin/jvm/functions/Function0;
    .param p8, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Lkotlinx/coroutines/Waiter;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p6

    const/4 v10, 0x0

    .line 374
    .local v10, "$i$f$sendImplOnNoWaiter":I
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    const-string/jumbo v11, "unexpected"

    packed-switch v0, :pswitch_data_0

    .line 3517
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 399
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 391
    nop

    .line 3437
    nop

    .line 3438
    nop

    .line 3437
    const/4 v12, 0x0

    .local v12, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3442
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3443
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3446
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v13

    .line 3447
    .local v13, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v13

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3448
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 3447
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v15, v1

    .line 3449
    .local v15, "s$iv":J
    invoke-static {v8, v13, v14}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v17

    .line 3451
    .local v17, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v15, v1

    .line 3452
    .local v6, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v15, v1

    long-to-int v4, v1

    .line 3455
    .local v4, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 3457
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3464
    if-eqz v17, :cond_0

    .line 3465
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move/from16 v18, v10

    goto/16 :goto_4

    .line 3467
    :cond_0
    goto :goto_0

    .line 3457
    :cond_1
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 3455
    :cond_2
    move-object v5, v0

    .line 3473
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p3

    move-object/from16 v19, v5

    move/from16 v18, v10

    move v10, v4

    .end local v4    # "i$iv":I
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "i$iv":I
    .local v18, "$i$f$sendImplOnNoWaiter":I
    .local v19, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v15

    move-wide/from16 v20, v6

    .end local v6    # "id$iv":J
    .local v20, "id$iv":J
    move-object/from16 v6, p6

    move/from16 v7, v17

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move-object/from16 v1, v19

    .line 3517
    .end local v10    # "i$iv":I
    .end local v13    # "sendersAndCloseStatusCur$iv":J
    .end local v15    # "s$iv":J
    .end local v17    # "closed$iv":Z
    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v20    # "id$iv":J
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto :goto_5

    .line 3510
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "i$iv":I
    .restart local v13    # "sendersAndCloseStatusCur$iv":J
    .restart local v15    # "s$iv":J
    .restart local v17    # "closed$iv":Z
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v20    # "id$iv":J
    :pswitch_2
    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3511
    move-object/from16 v1, v19

    goto :goto_5

    .line 3503
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v15, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3504
    :cond_3
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4

    .line 3516
    :pswitch_4
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3517
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3491
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_5
    if-eqz v17, :cond_4

    .line 3492
    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3493
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4

    .line 3495
    :cond_4
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v0, v9

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    move-object/from16 v1, v19

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v8, v0, v1, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v1, v19

    .line 3496
    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    const/4 v0, 0x0

    .line 395
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1":I
    nop

    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3496
    goto :goto_4

    .line 3484
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_6
    move-object/from16 v1, v19

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4

    .line 3479
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_7
    move-object/from16 v1, v19

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3480
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 3517
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "i$iv":I
    .end local v12    # "$i$f$sendImpl":I
    .end local v13    # "sendersAndCloseStatusCur$iv":J
    .end local v15    # "s$iv":J
    .end local v17    # "closed$iv":Z
    .end local v20    # "id$iv":J
    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, p2

    goto :goto_6

    .line 3443
    .restart local v12    # "$i$f$sendImpl":I
    .restart local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v1

    move/from16 v10, v18

    .end local v19    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    .line 386
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "$i$f$sendImpl":I
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .local v10, "$i$f$sendImplOnNoWaiter":I
    :pswitch_8
    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-gez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 387
    :cond_7
    invoke-interface/range {p8 .. p8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-object/from16 v0, p1

    move/from16 v1, p2

    goto :goto_6

    .line 383
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .restart local v10    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_9
    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v8, v9, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_6

    .line 380
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .restart local v10    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_6

    .line 376
    .end local v18    # "$i$f$sendImplOnNoWaiter":I
    .restart local v10    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v18, v10

    .end local v10    # "$i$f$sendImplOnNoWaiter":I
    .restart local v18    # "$i$f$sendImplOnNoWaiter":I
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 377
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 401
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final sendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 153
    move-object/from16 v1, p0

    move-object/from16 v10, p3

    const/4 v11, 0x0

    .line 3152
    .local v11, "$i$f$suspendCancellableCoroutineReusable":I
    move-object/from16 v12, p6

    .local v12, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v13, 0x0

    .line 3153
    .local v13, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v12}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v14

    .line 3154
    .local v14, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 3155
    move-object v0, v14

    .local v0, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v15, 0x0

    .line 154
    .local v15, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    move-object/from16 v9, p0

    .local v9, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/16 v16, 0x0

    .line 3156
    .local v16, "$i$f$sendImplOnNoWaiter":I
    :try_start_0
    move-object v8, v0

    check-cast v8, Lkotlinx/coroutines/Waiter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v17, 0x0

    move-object v2, v9

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v18, v11

    move-object v11, v9

    .end local v9    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v11, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v18, "$i$f$suspendCancellableCoroutineReusable":I
    move/from16 v9, v17

    :try_start_1
    invoke-static/range {v2 .. v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string/jumbo v17, "unexpected"

    packed-switch v2, :pswitch_data_0

    .line 3249
    :pswitch_0
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v25, "uCont$iv":Lkotlin/coroutines/Continuation;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/16 :goto_6

    .line 3172
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :pswitch_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3173
    nop

    .line 3174
    nop

    .line 3175
    nop

    .line 3174
    const/16 v19, 0x0

    .local v19, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 3179
    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3180
    .local v2, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 3183
    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    move-wide v8, v3

    .line 3184
    .local v8, "sendersAndCloseStatusCur$iv$iv":J
    nop

    .local v3, "$this$sendersCounter$iv$iv$iv":J
    const/4 v5, 0x0

    .line 3185
    .local v5, "$i$f$getSendersCounter":I
    const-wide v6, 0xfffffffffffffffL

    and-long/2addr v3, v6

    .line 3184
    .end local v3    # "$this$sendersCounter$iv$iv$iv":J
    .end local v5    # "$i$f$getSendersCounter":I
    move-wide/from16 v20, v3

    .line 3186
    .local v20, "s$iv$iv":J
    invoke-static {v11, v8, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v3

    move/from16 v22, v3

    .line 3188
    .local v22, "closed$iv$iv":Z
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    div-long v3, v20, v3

    move-wide v6, v3

    .line 3189
    .local v6, "id$iv$iv":J
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    rem-long v3, v20, v3

    long-to-int v5, v3

    .line 3192
    .local v5, "i$iv$iv":I
    iget-wide v3, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_2

    .line 3194
    :try_start_4
    invoke-static {v11, v6, v7, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3201
    if-eqz v22, :cond_0

    .line 3202
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3202
    .end local v3    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    goto/16 :goto_5

    .line 3204
    :cond_0
    goto :goto_0

    .line 3194
    :cond_1
    move-object v2, v3

    move-object v4, v2

    goto :goto_1

    .line 3253
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v2    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v5    # "i$iv$iv":I
    .end local v6    # "id$iv$iv":J
    .end local v8    # "sendersAndCloseStatusCur$iv$iv":J
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    .end local v19    # "$i$f$sendImpl":I
    .end local v20    # "s$iv$iv":J
    .end local v22    # "closed$iv$iv":Z
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    goto/16 :goto_8

    .line 3192
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v2    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v5    # "i$iv$iv":I
    .restart local v6    # "id$iv$iv":J
    .restart local v8    # "sendersAndCloseStatusCur$iv$iv":J
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    .restart local v19    # "$i$f$sendImpl":I
    .restart local v20    # "s$iv$iv":J
    .restart local v22    # "closed$iv$iv":Z
    :cond_2
    move-object v4, v2

    .line 3210
    .end local v2    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v4, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    :try_start_5
    move-object/from16 v23, v0

    check-cast v23, Lkotlinx/coroutines/Waiter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v11

    move-object v3, v4

    move-object/from16 v24, v4

    .end local v4    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v24, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move v4, v5

    move-object/from16 v25, v12

    move v12, v5

    .end local v5    # "i$iv$iv":I
    .local v12, "i$iv$iv":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object/from16 v5, p3

    move-wide/from16 v26, v6

    .end local v6    # "id$iv$iv":J
    .local v26, "id$iv$iv":J
    move-wide/from16 v6, v20

    move-wide/from16 v28, v8

    .end local v8    # "sendersAndCloseStatusCur$iv$iv":J
    .local v28, "sendersAndCloseStatusCur$iv$iv":J
    move-object/from16 v8, v23

    move/from16 v9, v22

    :try_start_6
    invoke-static/range {v2 .. v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object/from16 v3, v24

    .line 3249
    .end local v12    # "i$iv$iv":I
    .end local v20    # "s$iv$iv":J
    .end local v22    # "closed$iv$iv":Z
    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v26    # "id$iv$iv":J
    .end local v28    # "sendersAndCloseStatusCur$iv$iv":J
    .local v3, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_4

    .line 3242
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v12    # "i$iv$iv":I
    .restart local v20    # "s$iv$iv":J
    .restart local v22    # "closed$iv$iv":Z
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v26    # "id$iv$iv":J
    .restart local v28    # "sendersAndCloseStatusCur$iv$iv":J
    :pswitch_2
    invoke-virtual/range {v24 .. v24}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3243
    move-object/from16 v3, v24

    goto/16 :goto_4

    .line 3235
    :pswitch_3
    invoke-virtual {v11}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    cmp-long v2, v20, v2

    if-gez v2, :cond_3

    invoke-virtual/range {v24 .. v24}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3236
    :cond_3
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3236
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3248
    :pswitch_4
    const/4 v2, 0x0

    .local v2, "$i$a$-sendImpl-BufferedChannel$sendImpl$1$iv":I
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 3249
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local p2    # "index":I
    .end local p3    # "element":Ljava/lang/Object;
    .end local p4    # "s":J
    .end local p6    # "$completion":Lkotlin/coroutines/Continuation;
    throw v3

    .line 3228
    .end local v2    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1$iv":I
    .restart local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p2    # "index":I
    .restart local p3    # "element":Ljava/lang/Object;
    .restart local p4    # "s":J
    .restart local p6    # "$completion":Lkotlin/coroutines/Continuation;
    :pswitch_5
    if-eqz v22, :cond_4

    .line 3229
    invoke-virtual/range {v24 .. v24}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3230
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3230
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3232
    :cond_4
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;

    instance-of v2, v2, Lkotlinx/coroutines/Waiter;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    move-object/from16 v3, v24

    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v11, v2, v3, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v3, v24

    .line 3233
    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    const/4 v2, 0x0

    .line 3234
    .local v2, "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1$iv":I
    nop

    .line 3233
    .end local v2    # "$i$a$-sendImpl$default-BufferedChannel$sendImplOnNoWaiter$1$iv":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3221
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_6
    move-object/from16 v3, v24

    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3221
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3216
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_7
    move-object/from16 v3, v24

    .end local v24    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3217
    const/4 v2, 0x0

    .line 162
    .restart local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3217
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 3180
    .end local v12    # "i$iv$iv":I
    .end local v20    # "s$iv$iv":J
    .end local v22    # "closed$iv$iv":Z
    .end local v26    # "id$iv$iv":J
    .end local v28    # "sendersAndCloseStatusCur$iv$iv":J
    :goto_4
    move-object v2, v3

    move-object/from16 v12, v25

    goto/16 :goto_0

    .line 3253
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    .end local v19    # "$i$f$sendImpl":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v12, "uCont$iv":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v12

    move-object/from16 v3, p1

    move/from16 v4, p2

    goto/16 :goto_7

    .line 3168
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_8
    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-virtual {v11}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3169
    :cond_7
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v1, v10, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->access$onClosedSendOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 3169
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$2":I
    move-object/from16 v3, p1

    move/from16 v4, p2

    goto :goto_5

    .line 3165
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :pswitch_9
    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v3, p1

    move/from16 v4, p2

    :try_start_7
    invoke-static {v11, v2, v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_5

    .line 3253
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    goto :goto_8

    .line 3162
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    :pswitch_a
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3162
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    goto :goto_5

    .line 3158
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :pswitch_b
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3159
    const/4 v2, 0x0

    .line 162
    .restart local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 3159
    .end local v2    # "$i$a$-sendImplOnNoWaiter-BufferedChannel$sendOnNoWaiterSuspend$2$1":I
    nop

    .line 3252
    :goto_5
    nop

    .line 167
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    nop

    .line 3155
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    nop

    .line 3259
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3152
    .end local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_8

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_9

    return-object v0

    .line 3260
    :cond_9
    nop

    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 167
    return-object v0

    .line 3253
    .restart local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :catchall_3
    move-exception v0

    goto :goto_8

    .line 3250
    .restart local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .restart local v16    # "$i$f$sendImplOnNoWaiter":I
    :goto_6
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local p2    # "index":I
    .end local p3    # "element":Ljava/lang/Object;
    .end local p4    # "s":J
    .end local p6    # "$completion":Lkotlin/coroutines/Continuation;
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 3253
    .end local v0    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$sendOnNoWaiterSuspend$2":I
    .end local v16    # "$i$f$sendImplOnNoWaiter":I
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v13    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v14    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p2    # "index":I
    .restart local p3    # "element":Ljava/lang/Object;
    .restart local p4    # "s":J
    .restart local p6    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_4
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v25, v12

    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :goto_7
    goto :goto_8

    .end local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v11, "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :catchall_5
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v18, v11

    move-object/from16 v25, v12

    .line 3256
    .end local v11    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v12    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v18    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v25    # "uCont$iv":Lkotlin/coroutines/Continuation;
    :goto_8
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 3257
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final shouldSendSuspend(J)Z
    .locals 5
    .param p1, "curSendersAndCloseStatus"    # J

    .line 604
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 606
    :cond_0
    move-wide v0, p1

    .local v0, "$this$sendersCounter$iv":J
    const/4 v2, 0x0

    .line 3518
    .local v2, "$i$f$getSendersCounter":I
    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v0, v3

    .line 606
    .end local v0    # "$this$sendersCounter$iv":J
    .end local v2    # "$i$f$getSendersCounter":I
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "$this$tryResumeReceiver"    # Ljava/lang/Object;
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TE;)Z"
        }
    .end annotation

    .line 632
    nop

    .line 633
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_0

    .line 634
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    invoke-interface {v0, p0, p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 636
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/channels/ReceiveCatching;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 637
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveCatching;

    .line 638
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveCatching;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ReceiveCatching;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v2, p2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveCatching;

    iget-object v1, v1, Lkotlinx/coroutines/channels/ReceiveCatching;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v3, p2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_1
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    goto :goto_0

    .line 640
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    if-eqz v0, :cond_3

    .line 641
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 642
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->tryResumeHasNext(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 644
    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_5

    .line 645
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 646
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    iget-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_4

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v2, p2, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_4
    invoke-static {v0, p2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    .line 649
    :goto_0
    return v0

    .line 646
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected receiver type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z
    .locals 4
    .param p1, "$this$tryResumeSender"    # Ljava/lang/Object;
    .param p2, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;I)Z"
        }
    .end annotation

    .line 1147
    nop

    .line 1148
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1150
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 1151
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, v3, v2, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1153
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1154
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 1155
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectDetailed(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    move-result-object v0

    .line 1158
    .local v0, "trySelectResult":Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    sget-object v1, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->REREGISTER:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 1160
    :cond_1
    sget-object v1, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->SUCCESSFUL:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    .end local v0    # "trySelectResult":Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1162
    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;->getCont()Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    .line 1164
    :goto_0
    return v0

    .line 1162
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected waiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final update$atomicfu(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private final updateCellExpandBuffer(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z
    .locals 3
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "b"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 1245
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1246
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_1

    .line 1254
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    .line 1260
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1265
    const/4 v1, 0x1

    goto :goto_0

    .line 1268
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1269
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 1270
    nop

    .line 1261
    :goto_0
    return v1

    .line 1275
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellExpandBufferSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z

    move-result v1

    return v1
.end method

.method private final updateCellExpandBufferSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "b"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 1289
    nop

    :cond_0
    :goto_0
    nop

    .line 1291
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1292
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 1294
    instance-of v1, v0, Lkotlinx/coroutines/Waiter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1302
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v1, p3, v4

    if-gez v1, :cond_1

    .line 1313
    new-instance v1, Lkotlinx/coroutines/channels/WaiterEB;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/Waiter;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/channels/WaiterEB;-><init>(Lkotlinx/coroutines/Waiter;)V

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    return v3

    .line 1321
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1325
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1326
    move v2, v3

    goto :goto_1

    .line 1329
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1330
    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 1331
    nop

    .line 1322
    :goto_1
    return v2

    .line 1337
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return v2

    .line 1339
    :cond_4
    if-nez v0, :cond_5

    .line 1343
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 1346
    :cond_5
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_6

    return v3

    .line 1348
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 1351
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_8

    return v3

    .line 1355
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    :cond_a
    :goto_2
    return v3
.end method

.method private final updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 999
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1000
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 1002
    if-nez v0, :cond_1

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1007
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 3888
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 1007
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    nop

    .line 1008
    .local v1, "senders":J
    cmp-long v3, p3, v1

    if-ltz v3, :cond_2

    .line 1010
    if-nez p5, :cond_0

    .line 1013
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1016
    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1019
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1020
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1025
    .end local v1    # "senders":J
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1027
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1028
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1031
    :cond_2
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceiveSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private final updateCellReceiveSlow(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "waiter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1046
    nop

    :cond_0
    nop

    .line 1048
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 1049
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 1051
    if-eqz v0, :cond_9

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 1085
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1088
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1091
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    return-object v1

    .line 1094
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    return-object v1

    .line 1096
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 1100
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1101
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    return-object v1

    .line 1108
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1115
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    instance-of v1, v0, Lkotlinx/coroutines/channels/WaiterEB;

    .line 1119
    .local v1, "helpExpandBuffer":Z
    instance-of v2, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v2, v2, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_0

    :cond_6
    move-object v2, v0

    .line 1120
    .local v2, "sender":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, v2, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1128
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1129
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1130
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 1136
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 1137
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 1138
    if-eqz v1, :cond_8

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1139
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    .line 1120
    :goto_1
    return-object v3

    .line 1051
    .end local v1    # "helpExpandBuffer":Z
    .end local v2    # "sender":Ljava/lang/Object;
    :cond_9
    :goto_2
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1056
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 3889
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 1056
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    nop

    .line 1057
    .local v1, "senders":J
    cmp-long v3, p3, v1

    if-gez v3, :cond_a

    .line 1061
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v0, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1066
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1070
    :cond_a
    if-nez p5, :cond_b

    .line 1073
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3

    .line 1076
    :cond_b
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1079
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    .line 1080
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    return-object v3
.end method

.method private final updateCellSend(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Ljava/lang/Object;
    .param p7, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 422
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->storeElement$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 423
    if-eqz p7, :cond_0

    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    return v0

    .line 425
    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 426
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 428
    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 432
    invoke-direct {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 434
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v3, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 436
    return v1

    .line 443
    :cond_1
    if-nez p6, :cond_2

    .line 445
    const/4 v1, 0x3

    return v1

    .line 448
    :cond_2
    invoke-virtual {p1, p2, v3, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    return v1

    .line 453
    :cond_3
    instance-of v2, v0, Lkotlinx/coroutines/Waiter;

    if-eqz v2, :cond_6

    .line 456
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 458
    invoke-direct {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 460
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 461
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 462
    const/4 v1, 0x0

    goto :goto_0

    .line 468
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 469
    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 471
    :cond_5
    const/4 v1, 0x5

    .line 458
    :goto_0
    return v1

    .line 475
    :cond_6
    invoke-direct/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    return v1
.end method

.method private final updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 6
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "s"    # J
    .param p6, "waiter"    # Ljava/lang/Object;
    .param p7, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 497
    nop

    :cond_0
    nop

    .line 499
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    .line 500
    .local v0, "state":Ljava/lang/Object;
    nop

    .line 502
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 506
    invoke-direct {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-nez p7, :cond_1

    .line 508
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v5, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    return v3

    .line 517
    :cond_1
    nop

    .line 519
    if-eqz p7, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v5, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 521
    return v1

    .line 524
    :cond_2
    if-nez p6, :cond_3

    const/4 v1, 0x3

    return v1

    .line 526
    :cond_3
    invoke-virtual {p1, p2, v5, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    return v1

    .line 531
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v0, v4, :cond_5

    .line 533
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    return v3

    .line 539
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    const/4 v5, 0x5

    if-ne v0, v4, :cond_6

    .line 541
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 542
    return v5

    .line 545
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v0, v4, :cond_7

    .line 547
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 548
    return v5

    .line 551
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v0, v4, :cond_8

    .line 555
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 556
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 557
    return v1

    .line 561
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3056
    const/4 v1, 0x0

    .line 561
    .local v1, "$i$a$-assert-BufferedChannel$updateCellSendSlow$1":I
    instance-of v4, v0, Lkotlinx/coroutines/Waiter;

    if-nez v4, :cond_a

    instance-of v4, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_1

    :cond_a
    :goto_0
    move v1, v3

    .end local v1    # "$i$a$-assert-BufferedChannel$updateCellSendSlow$1":I
    :goto_1
    if-eqz v1, :cond_b

    goto :goto_2

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 564
    :cond_c
    :goto_2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    .line 568
    instance-of v1, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v1, v1, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_d
    move-object v1, v0

    .line 570
    .local v1, "receiver":Ljava/lang/Object;
    :goto_3
    invoke-direct {p0, v1, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 572
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILjava/lang/Object;)V

    .line 573
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onReceiveDequeued()V

    .line 574
    goto :goto_4

    .line 580
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v2, v4, :cond_f

    .line 581
    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    .line 583
    :cond_f
    move v2, v5

    .line 570
    :goto_4
    return v2
.end method

.method private final updateReceiversCounterIfLower(J)V
    .locals 12
    .param p1, "value"    # J

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v2, 0x0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v9

    .local v9, "cur":J
    const/4 v11, 0x0

    .line 2554
    .local v11, "$i$a$-loop$atomicfu-BufferedChannel$updateReceiversCounterIfLower$1":I
    cmp-long v3, v9, p1

    if-ltz v3, :cond_0

    return-void

    .line 2555
    :cond_0
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, p0

    move-wide v5, v9

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 2556
    :cond_1
    nop

    .end local v9    # "cur":J
    .end local v11    # "$i$a$-loop$atomicfu-BufferedChannel$updateReceiversCounterIfLower$1":I
    goto :goto_0
.end method

.method private final updateSendersCounterIfLower(J)V
    .locals 17
    .param p1, "value"    # J

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v2, 0x0

    move-object/from16 v9, p0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    .local v10, "cur":J
    const/4 v12, 0x0

    .line 2539
    .local v12, "$i$a$-loop$atomicfu-BufferedChannel$updateSendersCounterIfLower$1":I
    move-wide v3, v10

    .local v3, "$this$sendersCounter$iv":J
    const/4 v5, 0x0

    .line 4112
    .local v5, "$i$f$getSendersCounter":I
    const-wide v6, 0xfffffffffffffffL

    and-long/2addr v3, v6

    .line 2539
    .end local v3    # "$this$sendersCounter$iv":J
    .end local v5    # "$i$f$getSendersCounter":I
    move-wide v13, v3

    .line 2540
    .local v13, "curCounter":J
    cmp-long v3, v13, p1

    if-ltz v3, :cond_0

    return-void

    .line 2541
    :cond_0
    move-wide v3, v10

    .local v3, "$this$sendersCloseStatus$iv":J
    const/4 v5, 0x0

    .line 4113
    .local v5, "$i$f$getSendersCloseStatus":I
    const/16 v6, 0x3c

    shr-long v6, v3, v6

    long-to-int v3, v6

    .line 2541
    .end local v3    # "$this$sendersCloseStatus$iv":J
    .end local v5    # "$i$f$getSendersCloseStatus":I
    invoke-static {v13, v14, v3}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructSendersAndCloseStatus(JI)J

    move-result-wide v15

    .line 2542
    .local v15, "update":J
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v4, p0

    move-wide v5, v10

    move-wide v7, v15

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 2543
    :cond_1
    nop

    .end local v10    # "cur":J
    .end local v12    # "$i$a$-loop$atomicfu-BufferedChannel$updateSendersCounterIfLower$1":I
    .end local v13    # "curCounter":J
    .end local v15    # "update":J
    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1, "cause"    # Ljava/util/concurrent/CancellationException;

    .line 1762
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1757
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1765
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Channel was cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method public final checkSegmentStructureInvariants()V
    .locals 12

    .line 2669
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2670
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 2671
    .local v0, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferEndSegment must be NULL_SEGMENT for rendezvous and unlimited channels; they do not manipulate it.\nChannel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2672
    nop

    .line 2671
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2670
    .end local v0    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2675
    :cond_2
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v3, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v5, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_20

    .line 2680
    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/coroutines/channels/ChannelSegment;

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2681
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4151
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 4152
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v9, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v10, 0x0

    .line 2681
    .local v10, "$i$a$-filter-BufferedChannel$checkSegmentStructureInvariants$firstSegment$1":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v11

    if-eq v9, v11, :cond_5

    move v9, v2

    goto :goto_4

    :cond_5
    move v9, v1

    .line 4152
    .end local v9    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "$i$a$-filter-BufferedChannel$checkSegmentStructureInvariants$firstSegment$1":I
    :goto_4
    if-eqz v9, :cond_4

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4153
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 4151
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 2682
    move-object v0, v4

    .local v0, "$this$minBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4154
    .local v3, "$i$f$minByOrThrow":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4155
    .local v4, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 4156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4157
    .local v5, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_5

    .line 4158
    :cond_7
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v6, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v7, 0x0

    .line 2682
    .local v7, "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    iget-wide v6, v6, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4158
    .end local v6    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v7    # "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    nop

    .line 4160
    .local v6, "minValue$iv":J
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4161
    .local v8, "e$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/channels/ChannelSegment;

    .restart local v9    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v10, 0x0

    .line 2682
    .local v10, "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    iget-wide v9, v9, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4161
    .end local v9    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "$i$a$-minByOrThrow-BufferedChannel$checkSegmentStructureInvariants$firstSegment$2":I
    nop

    .line 4162
    .local v9, "v$iv":J
    cmp-long v11, v6, v9

    if-lez v11, :cond_9

    .line 4163
    move-object v5, v8

    .line 4164
    move-wide v6, v9

    .line 4166
    .end local v8    # "e$iv":Ljava/lang/Object;
    .end local v9    # "v$iv":J
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 4167
    nop

    .line 2682
    .end local v0    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$minByOrThrow":I
    .end local v4    # "iterator$iv":Ljava/util/Iterator;
    .end local v5    # "minElem$iv":Ljava/lang/Object;
    .end local v6    # "minValue$iv":J
    :goto_5
    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2680
    move-object v0, v5

    .line 2683
    .local v0, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    if-eqz v3, :cond_1e

    .line 2689
    move-object v3, v0

    .line 2690
    .local v3, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_7
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 2692
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v4

    if-ne v4, v3, :cond_b

    goto :goto_8

    :cond_b
    move v4, v1

    goto :goto_9

    :cond_c
    :goto_8
    move v4, v2

    :goto_9
    if-eqz v4, :cond_1c

    .line 2698
    const/4 v4, 0x0

    .line 2699
    .local v4, "interruptedOrClosedCells":I
    const/4 v5, 0x0

    .local v5, "i":I
    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    :goto_a
    if-ge v5, v6, :cond_17

    .line 2700
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v7

    .line 2701
    .local v7, "state":Ljava/lang/Object;
    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 2702
    instance-of v8, v7, Lkotlinx/coroutines/Waiter;

    if-nez v8, :cond_16

    .line 2703
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move v8, v2

    goto :goto_b

    :cond_d
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    :goto_b
    if-eqz v8, :cond_e

    move v8, v2

    goto :goto_c

    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    :goto_c
    const-string v9, "Check failed."

    if-eqz v8, :cond_11

    .line 2708
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_f

    move v8, v2

    goto :goto_d

    :cond_f
    move v8, v1

    :goto_d
    if-eqz v8, :cond_10

    .line 2709
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2708
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2711
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v8, v2

    goto :goto_e

    :cond_12
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    :goto_e
    if-eqz v8, :cond_15

    .line 2714
    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_13

    move v8, v2

    goto :goto_f

    :cond_13
    move v8, v1

    :goto_f
    if-eqz v8, :cond_14

    goto :goto_10

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected segment cell state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".\nChannel state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2699
    .end local v7    # "state":Ljava/lang/Object;
    :cond_16
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 2724
    .end local v5    # "i":I
    :cond_17
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    if-ne v4, v5, :cond_1b

    .line 2725
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v3, v5, :cond_19

    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v3, v5, :cond_19

    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_18

    goto :goto_11

    :cond_18
    move v5, v1

    goto :goto_12

    :cond_19
    :goto_11
    move v5, v2

    :goto_12
    if-eqz v5, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v1, 0x0

    .line 2726
    .local v1, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$5":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Logically removed segment is reachable.\nChannel state: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2725
    .end local v1    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$5":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2730
    :cond_1b
    :goto_13
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v5

    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    .end local v4    # "interruptedOrClosedCells":I
    goto/16 :goto_7

    .line 2692
    :cond_1c
    const/4 v1, 0x0

    .line 2693
    .local v1, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$4":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The `segment.next.prev === segment` invariant is violated.\nChannel state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2694
    nop

    .line 2693
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2692
    .end local v1    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$4":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2732
    :cond_1d
    return-void

    .line 2683
    .end local v3    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_1e
    const/4 v1, 0x0

    .line 2684
    .local v1, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$3":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All processed segments should be unreachable from the data structure, but the `prev` link of the leftmost segment is non-null.\nChannel state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2685
    nop

    .line 2684
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2683
    .end local v1    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$3":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4155
    .local v0, "$this$minBy$iv":Ljava/lang/Iterable;
    .local v3, "$i$f$minByOrThrow":I
    .local v4, "iterator$iv":Ljava/util/Iterator;
    :cond_1f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2675
    .end local v0    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$minByOrThrow":I
    .end local v4    # "iterator$iv":Ljava/util/Iterator;
    :cond_20
    const/4 v0, 0x0

    .line 2676
    .local v0, "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferEndSegment should not have lower id than receiveSegment.\nChannel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2677
    nop

    .line 2676
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2675
    .end local v0    # "$i$a$-check-BufferedChannel$checkSegmentStructureInvariants$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1754
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method protected closeOrCancelImpl(Ljava/lang/Throwable;Z)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "cancel"    # Z

    .line 1788
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->markCancellationStarted()V

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1791
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_CLOSE_CAUSE$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1793
    .local v0, "closedByThisOperation":Z
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->markCancelled()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->markClosed()V

    .line 1795
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->completeCloseOrCancel()V

    .line 1798
    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 1799
    .local v2, "$i$a$-also-BufferedChannel$closeOrCancelImpl$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedIdempotent()V

    .line 1800
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->invokeCloseHandler()V

    .line 1801
    :cond_2
    nop

    .line 1798
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-BufferedChannel$closeOrCancelImpl$1":I
    return v0
.end method

.method protected final dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V
    .locals 12
    .param p1, "globalCellIndex"    # J

    .line 807
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3056
    const/4 v0, 0x0

    .line 807
    .local v0, "$i$a$-assert-BufferedChannel$dropFirstElementUntilTheSpecifiedCellIsInTheBuffer$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isConflatedDropOldest()Z

    move-result v0

    .end local v0    # "$i$a$-assert-BufferedChannel$dropFirstElementUntilTheSpecifiedCellIsInTheBuffer$1":I
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 810
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 811
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_2
    :goto_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 814
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    .line 815
    .local v8, "r":J
    iget v1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    int-to-long v1, v1

    add-long/2addr v1, v8

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_3

    return-void

    .line 818
    :cond_3
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v3, 0x1

    add-long v6, v8, v3

    move-object v3, p0

    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v10, v8, v1

    .line 821
    .local v10, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v8, v1

    long-to-int v1, v1

    .line 824
    .local v1, "i":I
    iget-wide v2, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_5

    .line 826
    invoke-direct {p0, v10, v11, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_4

    .line 833
    goto :goto_1

    .line 826
    :cond_4
    move-object v0, v2

    .line 836
    :cond_5
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move v4, v1

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 837
    .local v2, "updCellResult":Ljava/lang/Object;
    nop

    .line 838
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 842
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    goto :goto_1

    .line 847
    :cond_6
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 849
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v4, v5}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 3056
    .local v3, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    :cond_7
    const/4 v4, 0x0

    .line 849
    .local v4, "$i$a$-let-BufferedChannel$dropFirstElementUntilTheSpecifiedCellIsInTheBuffer$2":I
    throw v3
.end method

.method protected final getCloseCause()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1723
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 1485
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 1486
    nop

    .line 1487
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    const-string v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 1488
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;

    const-string v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1489
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1485
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 1490
    return-object v0
.end method

.method public getOnReceiveCatching()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "TE;>;>;"
        }
    .end annotation

    .line 1494
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 1495
    nop

    .line 1496
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;

    const-string v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 1497
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$2;

    const-string v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1498
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1494
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 1499
    return-object v0
.end method

.method public getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TE;>;"
        }
    .end annotation

    .line 1503
    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 1504
    nop

    .line 1505
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$1;

    const-string v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 1506
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveOrNull$2;

    const-string v4, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1507
    iget-object v3, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlin/jvm/functions/Function3;

    .line 1503
    invoke-direct {v0, p0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectClause1;

    .line 1508
    return-object v0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "TE;",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;>;"
        }
    .end annotation

    .line 1456
    new-instance v7, Lkotlinx/coroutines/selects/SelectClause2Impl;

    .line 1457
    nop

    .line 1458
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onSend$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onSend$1;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 1459
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onSend$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onSend$2;

    const-string v3, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'param\')] kotlin.Any?, @[ParameterName(name = \'clauseResult\')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 1456
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/selects/SelectClause2Impl;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lkotlinx/coroutines/selects/SelectClause2;

    .line 1460
    return-object v7
.end method

.method public final getReceiversCounter$kotlinx_coroutines_core()J
    .locals 2

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 71
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getSendException()Ljava/lang/Throwable;
    .locals 2

    .line 1726
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ClosedSendChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final getSendersCounter$kotlinx_coroutines_core()J
    .locals 5

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 70
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    .local v0, "$this$sendersCounter$iv":J
    const/4 v2, 0x0

    .line 3057
    .local v2, "$i$f$getSendersCounter":I
    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v0, v3

    .line 70
    .end local v0    # "$this$sendersCounter$iv":J
    .end local v2    # "$i$f$getSendersCounter":I
    return-wide v0
.end method

.method public final hasElements$kotlinx_coroutines_core()Z
    .locals 14

    .line 2247
    nop

    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2249
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2251
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v7

    .line 2252
    .local v7, "r":J
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v9

    .line 2254
    .local v9, "s":J
    cmp-long v1, v9, v7

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    return v2

    .line 2258
    :cond_1
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v1

    div-long v11, v7, v3

    .line 2259
    .local v11, "id":J
    iget-wide v3, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v3, v11

    if-eqz v1, :cond_3

    .line 2261
    invoke-direct {p0, v11, v12, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2267
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v3, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v3, v11

    if-gez v1, :cond_0

    return v2

    .line 2261
    :cond_2
    move-object v0, v1

    .line 2269
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 2271
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v7, v1

    long-to-int v13, v1

    .line 2272
    .local v13, "i":I
    invoke-direct {p0, v0, v13, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->isCellNonEmpty(Lkotlinx/coroutines/channels/ChannelSegment;IJ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2274
    const-wide/16 v2, 0x1

    add-long v5, v7, v2

    move-object v2, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1828
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1830
    return-void

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v2, 0x0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "cur":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1838
    .local v4, "$i$a$-loop$atomicfu-BufferedChannel$invokeOnClose$1":I
    nop

    .line 1839
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 1843
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    invoke-static {v5, p0, v6, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1844
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    return-void

    .line 1851
    :cond_1
    nop

    .end local v3    # "cur":Ljava/lang/Object;
    .end local v4    # "$i$a$-loop$atomicfu-BufferedChannel$invokeOnClose$1":I
    goto :goto_0

    .line 1848
    .restart local v3    # "cur":Ljava/lang/Object;
    .restart local v4    # "$i$a$-loop$atomicfu-BufferedChannel$invokeOnClose$1":I
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v3, v5, :cond_3

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Another handler was already registered and successfully invoked"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 1849
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Another handler is already registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public isClosedForReceive()Z
    .locals 2

    .line 2188
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive0(J)Z

    move-result v0

    return v0
.end method

.method public isClosedForSend()Z
    .locals 2

    .line 2181
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend0(J)Z

    move-result v0

    return v0
.end method

.method protected isConflatedDropOldest()Z
    .locals 1

    .line 1905
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 2229
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2231
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2234
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1551
    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    check-cast v0, Lkotlinx/coroutines/channels/ChannelIterator;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->offer(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onClosedIdempotent()V
    .locals 0

    .line 1751
    return-void
.end method

.method protected onReceiveDequeued()V
    .locals 0

    .line 664
    return-void
.end method

.method protected onReceiveEnqueued()V
    .locals 0

    .line 658
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'tryReceive\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'poll\' did, for the precise replacement please refer to the \'poll\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "tryReceive().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .line 36
    invoke-static {p0}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->poll(Lkotlinx/coroutines/channels/Channel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelResult<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->receiveCatching-JP2dKIU$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public receiveOrNull(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of \'receiveCatching\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'receiveOrNull\' did, for the detailed replacement please refer to the \'receiveOrNull\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/Channel$DefaultImpls;->receiveOrNull(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 21
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1465
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1464
    move-object/from16 v3, p2

    .line 3897
    .local v3, "element$iv":Ljava/lang/Object;
    nop

    .line 3898
    nop

    .line 3897
    const/4 v11, 0x0

    .local v11, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3902
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3903
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3906
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v12

    .line 3907
    .local v12, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v12

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v4, 0x0

    .line 3908
    .local v4, "$i$f$getSendersCounter":I
    const-wide v5, 0xfffffffffffffffL

    and-long/2addr v1, v5

    .line 3907
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v4    # "$i$f$getSendersCounter":I
    move-wide v14, v1

    .line 3909
    .local v14, "s$iv":J
    invoke-static {v8, v12, v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v16

    .line 3911
    .local v16, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v14, v1

    .line 3912
    .local v6, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v14, v1

    long-to-int v4, v1

    .line 3915
    .local v4, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 3917
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3924
    if-eqz v16, :cond_0

    .line 3925
    const/4 v1, 0x0

    .line 1469
    .local v1, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    invoke-direct {v8, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 3925
    .end local v1    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    goto/16 :goto_4

    .line 3927
    :cond_0
    goto :goto_0

    .line 3917
    :cond_1
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 3915
    :cond_2
    move-object v5, v0

    .line 3933
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v18, v5

    move/from16 v17, v11

    move v11, v4

    .end local v4    # "i$iv":I
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v11, "i$iv":I
    .local v17, "$i$f$sendImpl":I
    .local v18, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v14

    move-wide/from16 v19, v6

    .end local v6    # "id$iv":J
    .local v19, "id$iv":J
    move-object/from16 v6, p1

    move/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v1, v18

    .line 3977
    .end local v11    # "i$iv":I
    .end local v12    # "sendersAndCloseStatusCur$iv":J
    .end local v14    # "s$iv":J
    .end local v16    # "closed$iv":Z
    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v19    # "id$iv":J
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto :goto_5

    .line 3970
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v11    # "i$iv":I
    .restart local v12    # "sendersAndCloseStatusCur$iv":J
    .restart local v14    # "s$iv":J
    .restart local v16    # "closed$iv":Z
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v19    # "id$iv":J
    :pswitch_0
    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3971
    move-object/from16 v1, v18

    goto :goto_5

    .line 3963
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v14, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3964
    :cond_3
    const/4 v0, 0x0

    .line 1469
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    invoke-direct {v8, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 3964
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    goto :goto_4

    .line 3976
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3977
    const-string/jumbo v2, "unexpected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3951
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v16, :cond_4

    .line 3952
    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3953
    const/4 v0, 0x0

    .line 1469
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    invoke-direct {v8, v10, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSelectOnSend(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V

    .line 3953
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$3":I
    goto :goto_4

    .line 3955
    :cond_4
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    move-object/from16 v1, v18

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v8, v0, v1, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v1, v18

    .line 3956
    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    const/4 v0, 0x0

    .line 1468
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$2":I
    nop

    .line 3956
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$2":I
    goto :goto_4

    .line 3944
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    move-object/from16 v1, v18

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v0, 0x0

    .line 1467
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v9, v2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 3944
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    goto :goto_4

    .line 3939
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_5
    move-object/from16 v1, v18

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3940
    const/4 v0, 0x0

    .line 1467
    .restart local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v9, v2}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 3940
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$registerSelectForSend$1":I
    nop

    .line 1470
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v11    # "i$iv":I
    .end local v12    # "sendersAndCloseStatusCur$iv":J
    .end local v14    # "s$iv":J
    .end local v16    # "closed$iv":Z
    .end local v17    # "$i$f$sendImpl":I
    .end local v19    # "id$iv":J
    :goto_4
    return-void

    .line 3903
    .restart local v3    # "element$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$sendImpl":I
    .restart local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v1

    move/from16 v11, v17

    .end local v18    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->send$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendBroadcast$kotlinx_coroutines_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->sendBroadcast$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final sendImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 20
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "waiter"    # Ljava/lang/Object;
    .param p3, "onRendezvousOrBuffered"    # Lkotlin/jvm/functions/Function0;
    .param p4, "onSuspend"    # Lkotlin/jvm/functions/Function2;
    .param p5, "onClosed"    # Lkotlin/jvm/functions/Function0;
    .param p6, "onNoWaiterSuspend"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;-",
            "Ljava/lang/Integer;",
            "-TE;-",
            "Ljava/lang/Long;",
            "+TR;>;)TR;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const/4 v10, 0x0

    .local v10, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 274
    .local v0, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    .line 278
    .local v11, "sendersAndCloseStatusCur":J
    move-wide v1, v11

    .local v1, "$this$sendersCounter$iv":J
    const/4 v3, 0x0

    .line 3436
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 278
    .end local v1    # "$this$sendersCounter$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v13, v1

    .line 280
    .local v13, "s":J
    invoke-static {v8, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v15

    .line 282
    .local v15, "closed":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v13, v1

    .line 283
    .local v6, "id":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v13, v1

    long-to-int v4, v1

    .line 286
    .local v4, "i":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 288
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 295
    if-eqz v15, :cond_0

    .line 296
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 298
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 286
    :cond_2
    move-object v5, v0

    .line 304
    .end local v0    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p1

    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "i":I
    .end local v5    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v16, "i":I
    .local v17, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v13

    move-wide/from16 v18, v6

    .end local v6    # "id":J
    .local v18, "id":J
    move-object/from16 v6, p2

    move v7, v15

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v3, p6

    move/from16 v1, v16

    move-object/from16 v4, v17

    .line 347
    .end local v11    # "sendersAndCloseStatusCur":J
    .end local v13    # "s":J
    .end local v15    # "closed":Z
    .end local v16    # "i":I
    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v18    # "id":J
    .local v4, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_4

    .line 341
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v11    # "sendersAndCloseStatusCur":J
    .restart local v13    # "s":J
    .restart local v15    # "closed":Z
    .restart local v16    # "i":I
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "id":J
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 342
    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v3, p6

    move-object/from16 v4, v17

    goto :goto_4

    .line 334
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 335
    :cond_3
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, v17

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-interface {v3, v4, v0, v2, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 322
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_3
    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, v17

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    if-eqz v15, :cond_4

    .line 323
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 324
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 326
    :cond_4
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    move/from16 v1, v16

    .end local v16    # "i":I
    .local v1, "i":I
    invoke-static {v8, v0, v4, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "i":I
    .restart local v16    # "i":I
    :cond_6
    move/from16 v1, v16

    .line 327
    .end local v16    # "i":I
    .restart local v1    # "i":I
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, p4

    invoke-interface {v5, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 315
    .end local v1    # "i":I
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v16    # "i":I
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_5
    move-object/from16 v4, v17

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 311
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 274
    .end local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "sendersAndCloseStatusCur":J
    .end local v13    # "s":J
    .end local v15    # "closed":Z
    .end local v16    # "i":I
    .end local v18    # "id":J
    .restart local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_4
    move-object v0, v4

    .end local v17    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldSendSuspend$kotlinx_coroutines_core()Z
    .locals 2

    .line 625
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->shouldSendSuspend(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 2564
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2566
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .local v2, "$this$sendersCloseStatus$iv":J
    const/4 v4, 0x0

    .line 4114
    .local v4, "$i$f$getSendersCloseStatus":I
    const/16 v5, 0x3c

    shr-long v5, v2, v5

    long-to-int v2, v5

    .line 2566
    .end local v2    # "$this$sendersCloseStatus$iv":J
    .end local v4    # "$i$f$getSendersCloseStatus":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2568
    :pswitch_0
    const-string v2, "cancelled,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2567
    :pswitch_1
    const-string v2, "closed,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2571
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    const-string v2, "data=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    const/4 v2, 0x3

    new-array v2, v2, [Lkotlinx/coroutines/channels/ChannelSegment;

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v2, v7

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 2575
    nop

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 4115
    .local v4, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v2

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 4116
    .local v9, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v12, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v13, 0x0

    .line 2575
    .local v13, "$i$a$-filter-BufferedChannel$toString$firstSegment$1":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v14

    if-eq v12, v14, :cond_1

    move v12, v6

    goto :goto_2

    :cond_1
    move v12, v5

    .line 4116
    .end local v12    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v13    # "$i$a$-filter-BufferedChannel$toString$firstSegment$1":I
    :goto_2
    if-eqz v12, :cond_0

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4117
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 4115
    nop

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 2576
    move-object v2, v5

    .local v2, "$this$minBy$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 4118
    .local v4, "$i$f$minByOrThrow":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4119
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 4120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 4121
    .local v7, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 4122
    :cond_3
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v8, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v9, 0x0

    .line 2576
    .local v9, "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    iget-wide v8, v8, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4122
    .end local v8    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v9    # "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    nop

    .line 4124
    .local v8, "minValue$iv":J
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 4125
    .local v10, "e$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v11, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v12, 0x0

    .line 2576
    .local v12, "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    iget-wide v11, v11, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4125
    .end local v11    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "$i$a$-minByOrThrow-BufferedChannel$toString$firstSegment$2":I
    nop

    .line 4126
    .local v11, "v$iv":J
    cmp-long v13, v8, v11

    if-lez v13, :cond_4

    .line 4127
    move-object v7, v10

    .line 4128
    move-wide v8, v11

    .line 4130
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "v$iv":J
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 4131
    nop

    .line 2576
    .end local v2    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$minByOrThrow":I
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v7    # "minElem$iv":Ljava/lang/Object;
    .end local v8    # "minValue$iv":J
    :goto_4
    check-cast v7, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2574
    move-object v10, v7

    .line 2577
    .local v10, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v11

    .line 2578
    .local v11, "r":J
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v13

    .line 2579
    .local v13, "s":J
    move-object v2, v10

    .line 2580
    .local v2, "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    nop

    .line 2581
    const/4 v4, 0x0

    .local v4, "i":I
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    :goto_6
    if-ge v4, v5, :cond_19

    .line 2582
    iget-wide v7, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move-object v15, v10

    .end local v10    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v15, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    int-to-long v9, v9

    mul-long/2addr v7, v9

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 2583
    .local v7, "globalCellIndex":J
    cmp-long v9, v7, v13

    if-ltz v9, :cond_5

    cmp-long v9, v7, v11

    if-gez v9, :cond_1a

    .line 2584
    :cond_5
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v9

    .line 2585
    .local v9, "cellState":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v10

    .line 2586
    .local v10, "element":Ljava/lang/Object;
    nop

    .line 2587
    instance-of v6, v9, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v6, :cond_8

    .line 2588
    nop

    .line 2589
    cmp-long v6, v7, v11

    if-gez v6, :cond_6

    cmp-long v6, v7, v13

    if-ltz v6, :cond_6

    const-string v6, "receive"

    goto/16 :goto_e

    .line 2590
    :cond_6
    cmp-long v6, v7, v13

    if-gez v6, :cond_7

    cmp-long v6, v7, v11

    if-ltz v6, :cond_7

    const-string/jumbo v6, "send"

    goto/16 :goto_e

    .line 2591
    :cond_7
    const-string v6, "cont"

    goto/16 :goto_e

    .line 2594
    :cond_8
    instance-of v6, v9, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v6, :cond_b

    .line 2595
    nop

    .line 2596
    cmp-long v6, v7, v11

    if-gez v6, :cond_9

    cmp-long v6, v7, v13

    if-ltz v6, :cond_9

    const-string v6, "onReceive"

    goto/16 :goto_e

    .line 2597
    :cond_9
    cmp-long v6, v7, v13

    if-gez v6, :cond_a

    cmp-long v6, v7, v11

    if-ltz v6, :cond_a

    const-string v6, "onSend"

    goto/16 :goto_e

    .line 2598
    :cond_a
    const-string/jumbo v6, "select"

    goto/16 :goto_e

    .line 2601
    :cond_b
    instance-of v6, v9, Lkotlinx/coroutines/channels/ReceiveCatching;

    if-eqz v6, :cond_c

    const-string v6, "receiveCatching"

    goto/16 :goto_e

    .line 2602
    :cond_c
    instance-of v6, v9, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v6, :cond_d

    const-string/jumbo v6, "sendBroadcast"

    goto/16 :goto_e

    .line 2603
    :cond_d
    instance-of v6, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EB("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e

    .line 2604
    :cond_e
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_7
    if-eqz v3, :cond_10

    const-string v6, "resuming_sender"

    goto :goto_e

    .line 2605
    :cond_10
    if-nez v9, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_9
    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_a
    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_b
    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_c
    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_d
    if-nez v3, :cond_18

    .line 2606
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2586
    :goto_e
    move-object v3, v6

    .line 2608
    .local v3, "cellStateString":Ljava/lang/String;
    if-eqz v10, :cond_17

    .line 2609
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "),"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 2611
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    .end local v3    # "cellStateString":Ljava/lang/String;
    .end local v7    # "globalCellIndex":J
    .end local v9    # "cellState":Ljava/lang/Object;
    .end local v10    # "element":Ljava/lang/Object;
    :cond_18
    :goto_f
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x2c

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v10, v15

    goto/16 :goto_6

    .end local v15    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_19
    move-object v15, v10

    .line 2615
    .end local v4    # "i":I
    .end local v10    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v15    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v0, :cond_1c

    .line 2617
    :cond_1a
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_1b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "this.deleteCharAt(index)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2618
    :cond_1b
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2615
    :cond_1c
    const/16 v3, 0x2c

    const/4 v6, 0x1

    move-object v2, v0

    move-object/from16 v0, p0

    move-object v10, v15

    goto/16 :goto_5

    .line 4130
    .end local v11    # "r":J
    .end local v13    # "s":J
    .end local v15    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v2, "$this$minBy$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$minByOrThrow":I
    .restart local v5    # "iterator$iv":Ljava/util/Iterator;
    .local v7, "minElem$iv":Ljava/lang/Object;
    .restart local v8    # "minValue$iv":J
    :cond_1d
    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 4119
    .end local v7    # "minElem$iv":Ljava/lang/Object;
    .end local v8    # "minValue$iv":J
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toStringDebug$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 15

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2628
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",R="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",B="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",B\'="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",C="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .local v2, "$this$sendersCloseStatus$iv":J
    const/4 v4, 0x0

    .line 4132
    .local v4, "$i$f$getSendersCloseStatus":I
    const/16 v5, 0x3c

    shr-long v6, v2, v5

    long-to-int v2, v6

    .line 2628
    .end local v2    # "$this$sendersCloseStatus$iv":J
    .end local v4    # "$i$f$getSendersCloseStatus":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2629
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    .local v3, "$this$sendersCloseStatus$iv":J
    const/4 v1, 0x0

    .line 4133
    .local v1, "$i$f$getSendersCloseStatus":I
    shr-long v5, v3, v5

    long-to-int v1, v5

    .line 2629
    .end local v1    # "$i$f$getSendersCloseStatus":I
    .end local v3    # "$this$sendersCloseStatus$iv":J
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2632
    :pswitch_0
    const-string v1, "CANCELLED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2631
    :pswitch_1
    const-string v1, "CLOSED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2630
    :pswitch_2
    const-string v1, "CANCELLATION_STARTED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2635
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEND_SEGM="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",RCV_SEGM="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",EB_SEGM="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/coroutines/channels/ChannelSegment;

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 2640
    nop

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4134
    .local v3, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v1

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 4135
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v11, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v12, 0x0

    .line 2640
    .local v12, "$i$a$-filter-BufferedChannel$toStringDebug$firstSegment$1":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v13

    if-eq v11, v13, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    move v11, v4

    .line 4135
    .end local v11    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v12    # "$i$a$-filter-BufferedChannel$toStringDebug$firstSegment$1":I
    :goto_2
    if-eqz v11, :cond_1

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4136
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    move-object v5, v6

    check-cast v5, Ljava/util/List;

    .line 4134
    nop

    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 2641
    move-object v1, v5

    .local v1, "$this$minBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 4137
    .local v3, "$i$f$minByOrThrow":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4138
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4139
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4140
    .local v6, "minElem$iv":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 4141
    :cond_4
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v7, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v8, 0x0

    .line 2641
    .local v8, "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    iget-wide v7, v7, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4141
    .end local v7    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    nop

    .line 4143
    .local v7, "minValue$iv":J
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 4144
    .local v9, "e$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/channels/ChannelSegment;

    .local v10, "it":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v11, 0x0

    .line 2641
    .local v11, "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    iget-wide v10, v10, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    .line 4144
    .end local v10    # "it":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v11    # "$i$a$-minByOrThrow-BufferedChannel$toStringDebug$firstSegment$2":I
    nop

    .line 4145
    .local v10, "v$iv":J
    cmp-long v12, v7, v10

    if-lez v12, :cond_6

    .line 4146
    move-object v6, v9

    .line 4147
    move-wide v7, v10

    .line 4149
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v10    # "v$iv":J
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 4150
    nop

    .line 2641
    .end local v1    # "$this$minBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$minByOrThrow":I
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v6    # "minElem$iv":Ljava/lang/Object;
    .end local v7    # "minValue$iv":J
    :goto_3
    check-cast v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2639
    move-object v9, v6

    .line 2642
    .local v9, "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v1, 0x0

    .local v1, "segment":Ljava/lang/Object;
    move-object v1, v9

    .line 2643
    :goto_4
    nop

    .line 2644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "*"

    goto :goto_5

    :cond_7
    const-string v5, ""

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v1, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",prev="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-static {v5}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_8
    move-object v5, v6

    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_e

    move v7, v5

    .local v7, "i":I
    const/4 v8, 0x0

    .line 2646
    .local v8, "$i$a$-repeat-BufferedChannel$toStringDebug$1":I
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v10

    .line 2647
    .local v10, "cellState":Ljava/lang/Object;
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v11

    .line 2648
    .local v11, "element":Ljava/lang/Object;
    nop

    .line 2649
    instance-of v12, v10, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v12, :cond_9

    const-string v12, "cont"

    goto :goto_8

    .line 2650
    :cond_9
    instance-of v12, v10, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v12, :cond_a

    const-string/jumbo v12, "select"

    goto :goto_8

    .line 2651
    :cond_a
    instance-of v12, v10, Lkotlinx/coroutines/channels/ReceiveCatching;

    if-eqz v12, :cond_b

    const-string v12, "receiveCatching"

    goto :goto_8

    .line 2652
    :cond_b
    instance-of v12, v10, Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;

    if-eqz v12, :cond_c

    const-string/jumbo v12, "send(broadcast)"

    goto :goto_8

    .line 2653
    :cond_c
    instance-of v12, v10, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EB("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    .line 2654
    :cond_d
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2648
    :goto_8
    nop

    .line 2656
    .local v12, "cellStateString":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x5b

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]=("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "),"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    nop

    .line 2645
    .end local v7    # "i":I
    .end local v8    # "$i$a$-repeat-BufferedChannel$toStringDebug$1":I
    .end local v10    # "cellState":Ljava/lang/Object;
    .end local v11    # "element":Ljava/lang/Object;
    .end local v12    # "cellStateString":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2658
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/channels/ChannelSegment;

    if-eqz v5, :cond_f

    invoke-static {v5}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v3, :cond_10

    .line 2663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2660
    :cond_10
    move-object v1, v3

    goto/16 :goto_4

    .line 4138
    .end local v9    # "firstSegment":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v1, "$this$minBy$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$minByOrThrow":I
    .restart local v5    # "iterator$iv":Ljava/util/Iterator;
    :cond_11
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tryReceive-PtdJZtk()Ljava/lang/Object;
    .locals 21

    move-object/from16 v6, p0

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 764
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    .local v7, "r":J
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 765
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v9

    .line 767
    .local v9, "sendersAndCloseStatusCur":J
    invoke-direct {v6, v9, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 771
    :cond_0
    move-wide v0, v9

    .local v0, "$this$sendersCounter$iv":J
    const/4 v2, 0x0

    .line 3781
    .local v2, "$i$f$getSendersCounter":I
    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v0, v3

    .line 771
    .end local v0    # "$this$sendersCounter$iv":J
    .end local v2    # "$i$f$getSendersCounter":I
    move-wide v11, v0

    .line 772
    .local v11, "s":J
    cmp-long v0, v7, v11

    if-ltz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 783
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    .line 781
    move-object v13, v0

    .line 3782
    .local v13, "waiter$iv":Ljava/lang/Object;
    nop

    .line 3783
    nop

    .line 3782
    const/4 v14, 0x0

    .local v14, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3787
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3788
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3791
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 796
    .local v1, "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$3":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3791
    .end local v1    # "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$3":I
    move-wide/from16 v17, v7

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3794
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v15

    .line 3796
    .local v15, "r$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v3, v15, v1

    .line 3797
    .local v3, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v15, v1

    long-to-int v5, v1

    .line 3800
    .local v5, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 3802
    invoke-static {v6, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 3806
    goto :goto_0

    .line 3802
    :cond_3
    move-object v0, v1

    move-object v2, v0

    goto :goto_1

    .line 3800
    :cond_4
    move-object v2, v0

    .line 3809
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v2, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v2

    move-wide/from16 v17, v7

    move-object v7, v2

    .end local v2    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v7, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v17, "r":J
    move v2, v5

    move-wide/from16 v19, v3

    .end local v3    # "id$iv":J
    .local v19, "id$iv":J
    move-wide v3, v15

    move v8, v5

    .end local v5    # "i$iv":I
    .local v8, "i$iv":I
    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3810
    .local v0, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3811
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 3814
    instance-of v1, v13, Lkotlinx/coroutines/Waiter;

    if-eqz v1, :cond_5

    move-object v1, v13

    check-cast v1, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {v6, v1, v7, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3815
    :cond_6
    move-object v1, v7

    .local v1, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v2, v15

    .local v2, "globalIndex":J
    const/4 v4, 0x0

    .line 791
    .local v4, "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$2":I
    invoke-virtual {v6, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->waitExpandBufferCompletion$kotlinx_coroutines_core(J)V

    .line 792
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 793
    sget-object v5, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v1

    .line 3815
    .end local v1    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "globalIndex":J
    .end local v4    # "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$2":I
    goto :goto_3

    .line 3817
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 3824
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v15, v1

    if-gez v1, :cond_8

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3825
    :cond_8
    move-object v0, v7

    move-wide/from16 v7, v17

    goto/16 :goto_0

    .line 3827
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_a

    .line 3832
    invoke-virtual {v7}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3834
    move-object v1, v0

    .local v1, "element":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 785
    .local v2, "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$1":I
    sget-object v3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 3834
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "$i$a$-receiveImpl$default-BufferedChannel$tryReceive$1":I
    :goto_3
    nop

    .line 3810
    nop

    .line 781
    .end local v0    # "updCellResult$iv":Ljava/lang/Object;
    .end local v7    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v8    # "i$iv":I
    .end local v13    # "waiter$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$receiveImpl":I
    .end local v15    # "r$iv":J
    .end local v19    # "id$iv":J
    :goto_4
    return-object v1

    .line 3830
    .restart local v0    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v7    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "i$iv":I
    .restart local v13    # "waiter$iv":Ljava/lang/Object;
    .restart local v14    # "$i$f$receiveImpl":I
    .restart local v15    # "r$iv":J
    .restart local v19    # "id$iv":J
    :cond_a
    const/4 v1, 0x0

    .local v1, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 3831
    const-string/jumbo v3, "unexpected"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 188
    move-object/from16 v8, p0

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->shouldSendSuspend(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    .line 194
    move-object v9, v0

    .line 3263
    .local v9, "waiter$iv":Ljava/lang/Object;
    nop

    .line 3264
    nop

    .line 3263
    const/4 v10, 0x0

    .local v10, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3268
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3269
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3272
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    .line 3273
    .local v11, "sendersAndCloseStatusCur$iv":J
    move-wide v1, v11

    .local v1, "$this$sendersCounter$iv$iv":J
    const/4 v3, 0x0

    .line 3274
    .local v3, "$i$f$getSendersCounter":I
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v1, v4

    .line 3273
    .end local v1    # "$this$sendersCounter$iv$iv":J
    .end local v3    # "$i$f$getSendersCounter":I
    move-wide v13, v1

    .line 3275
    .local v13, "s$iv":J
    invoke-static {v8, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v15

    .line 3277
    .local v15, "closed$iv":Z
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v6, v13, v1

    .line 3278
    .local v6, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v13, v1

    long-to-int v4, v1

    .line 3281
    .local v4, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 3283
    invoke-static {v8, v6, v7, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3290
    if-eqz v15, :cond_1

    .line 3291
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3291
    .end local v1    # "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    goto/16 :goto_4

    .line 3293
    :cond_1
    goto :goto_0

    .line 3283
    :cond_2
    move-object v0, v1

    move-object v5, v0

    goto :goto_1

    .line 3281
    :cond_3
    move-object v5, v0

    .line 3299
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v5, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, p1

    move-object/from16 v17, v5

    move/from16 v16, v10

    move v10, v4

    .end local v4    # "i$iv":I
    .end local v5    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "i$iv":I
    .local v16, "$i$f$sendImpl":I
    .local v17, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v4, v13

    move-wide/from16 v18, v6

    .end local v6    # "id$iv":J
    .local v18, "id$iv":J
    move-object v6, v9

    move v7, v15

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v1, v17

    .line 3343
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v18    # "id$iv":J
    .local v1, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_5

    .line 3336
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "i$iv":I
    .restart local v11    # "sendersAndCloseStatusCur$iv":J
    .restart local v13    # "s$iv":J
    .restart local v15    # "closed$iv":Z
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "id$iv":J
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3337
    move-object/from16 v1, v17

    goto/16 :goto_5

    .line 3329
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_4

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3330
    :cond_4
    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3330
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    goto :goto_4

    .line 3342
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3343
    const-string/jumbo v2, "unexpected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3317
    .end local v0    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v15, :cond_5

    .line 3318
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 3319
    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3319
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$3":I
    goto :goto_4

    .line 3321
    :cond_5
    instance-of v0, v9, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_6

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v8, v0, v1, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_3

    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_7
    move-object/from16 v1, v17

    .line 3322
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_3
    move-object v0, v1

    .local v0, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 205
    .local v2, "$i$a$-sendImpl$default-BufferedChannel$trySend$2":I
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 206
    sget-object v3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    .line 3322
    .end local v0    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "$i$a$-sendImpl$default-BufferedChannel$trySend$2":I
    move-object v1, v0

    goto :goto_4

    .line 3310
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v0, 0x0

    .line 200
    .local v0, "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3310
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    move-object v1, v0

    goto :goto_4

    .line 3305
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_5
    move-object/from16 v1, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3306
    const/4 v0, 0x0

    .line 200
    .restart local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    sget-object v2, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3306
    .end local v0    # "$i$a$-sendImpl$default-BufferedChannel$trySend$1":I
    move-object v1, v0

    .line 194
    .end local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v9    # "waiter$iv":Ljava/lang/Object;
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v16    # "$i$f$sendImpl":I
    .end local v18    # "id$iv":J
    :goto_4
    return-object v1

    .line 3269
    .restart local v9    # "waiter$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$sendImpl":I
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_5
    move-object v0, v1

    move/from16 v10, v16

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v1    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final waitExpandBufferCompletion$kotlinx_coroutines_core(J)V
    .locals 24
    .param p1, "globalIndex"    # J

    .line 1393
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1397
    :cond_0
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 1402
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getEXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS$p()I

    move-result v0

    const/4 v7, 0x0

    move v1, v7

    :goto_0
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge v1, v0, :cond_2

    move v2, v1

    .local v2, "it":I
    const/4 v3, 0x0

    .line 1404
    .local v3, "$i$a$-repeat-BufferedChannel$waitExpandBufferCompletion$1":I
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v4

    .local v4, "b":J
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1406
    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    .local v10, "$this$ebCompletedCounter$iv":J
    const/4 v12, 0x0

    .line 3892
    .local v12, "$i$f$getEbCompletedCounter":I
    and-long/2addr v8, v10

    .line 1406
    .end local v10    # "$this$ebCompletedCounter$iv":J
    .end local v12    # "$i$f$getEbCompletedCounter":I
    nop

    .line 1412
    .local v8, "ebCompleted":J
    cmp-long v10, v4, v8

    if-nez v10, :cond_1

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    return-void

    .line 1413
    :cond_1
    nop

    .line 1402
    .end local v2    # "it":I
    .end local v3    # "$i$a$-repeat-BufferedChannel$waitExpandBufferCompletion$1":I
    .end local v4    # "b":J
    .end local v8    # "ebCompleted":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v10, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v12, 0x0

    .local v12, "$i$f$update$atomicfu":I
    :goto_1
    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "it":J
    const/4 v4, 0x0

    .line 1416
    .local v4, "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$2":I
    move-wide v13, v0

    .local v13, "$this$ebCompletedCounter$iv":J
    const/4 v5, 0x0

    .line 3893
    .local v5, "$i$f$getEbCompletedCounter":I
    and-long/2addr v13, v8

    .line 1416
    .end local v5    # "$i$f$getEbCompletedCounter":I
    .end local v13    # "$this$ebCompletedCounter$iv":J
    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    move-result-wide v4

    .end local v0    # "it":J
    .end local v4    # "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$2":I
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1419
    .end local v10    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v12    # "$i$f$update$atomicfu":I
    :goto_2
    nop

    .line 1421
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v10

    .local v10, "b":J
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1424
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v12

    .line 1425
    .local v12, "ebCompletedAndBit":J
    move-wide v0, v12

    .local v0, "$this$ebCompletedCounter$iv":J
    const/4 v2, 0x0

    .line 3894
    .local v2, "$i$f$getEbCompletedCounter":I
    and-long/2addr v0, v8

    .line 1425
    .end local v0    # "$this$ebCompletedCounter$iv":J
    .end local v2    # "$i$f$getEbCompletedCounter":I
    move-wide v4, v0

    .line 1426
    .local v4, "ebCompleted":J
    move-wide v0, v12

    .local v0, "$this$ebPauseExpandBuffers$iv":J
    const/4 v2, 0x0

    .line 3895
    .local v2, "$i$f$getEbPauseExpandBuffers":I
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    and-long v16, v0, v16

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_3

    move v0, v15

    goto :goto_3

    :cond_3
    move v0, v7

    .line 1426
    .end local v0    # "$this$ebPauseExpandBuffers$iv":J
    .end local v2    # "$i$f$getEbPauseExpandBuffers":I
    :goto_3
    move v14, v0

    .line 1430
    .local v14, "pauseExpandBuffers":Z
    cmp-long v0, v10, v4

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-nez v0, :cond_5

    sget-object v15, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v15, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v16, p0

    .local v16, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/16 v17, 0x0

    .local v17, "$i$f$update$atomicfu":I
    :goto_4
    invoke-virtual {v15, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    move-wide v0, v2

    .local v0, "it":J
    const/16 v18, 0x0

    .line 1433
    .local v18, "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$3":I
    move-wide/from16 v19, v0

    .local v19, "$this$ebCompletedCounter$iv":J
    const/16 v21, 0x0

    .line 3896
    .local v21, "$i$f$getEbCompletedCounter":I
    move-wide/from16 v22, v0

    .end local v0    # "it":J
    .local v22, "it":J
    and-long v0, v19, v8

    .line 1433
    .end local v19    # "$this$ebCompletedCounter$iv":J
    .end local v21    # "$i$f$getEbCompletedCounter":I
    invoke-static {v0, v1, v7}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    move-result-wide v18

    .end local v18    # "$i$a$-update$atomicfu-BufferedChannel$waitExpandBufferCompletion$3":I
    .end local v22    # "it":J
    move-object v0, v15

    move-object/from16 v1, p0

    move-wide v7, v4

    .end local v4    # "ebCompleted":J
    .local v7, "ebCompleted":J
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1435
    .end local v15    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v16    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v17    # "$i$f$update$atomicfu":I
    return-void

    .line 1433
    .restart local v15    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .restart local v16    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v17    # "$i$f$update$atomicfu":I
    :cond_4
    move-wide v4, v7

    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto :goto_4

    .line 1430
    .end local v7    # "ebCompleted":J
    .end local v15    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .end local v16    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v17    # "$i$f$update$atomicfu":I
    .restart local v4    # "ebCompleted":J
    :cond_5
    move-wide v7, v4

    .line 1440
    .end local v4    # "ebCompleted":J
    .restart local v7    # "ebCompleted":J
    if-nez v14, :cond_6

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1441
    nop

    .line 1442
    nop

    .line 1443
    invoke-static {v7, v8, v15}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$constructEBCompletedAndPauseFlag(JZ)J

    move-result-wide v4

    move-object/from16 v1, p0

    move-wide v2, v12

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto :goto_2

    .line 1440
    :cond_6
    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto :goto_2

    .line 1416
    .end local v7    # "ebCompleted":J
    .end local v14    # "pauseExpandBuffers":Z
    .local v10, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .restart local v11    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .local v12, "$i$f$update$atomicfu":I
    :cond_7
    const/4 v7, 0x0

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    goto/16 :goto_1
.end method
