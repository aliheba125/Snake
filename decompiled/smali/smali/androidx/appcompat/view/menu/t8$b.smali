.class public abstract Landroidx/appcompat/view/menu/t8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/t8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$a;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;

.field public static e:Landroidx/appcompat/view/menu/go0$b;

.field public static f:Landroidx/appcompat/view/menu/go0$b;

.field public static g:Landroidx/appcompat/view/menu/go0$b;

.field public static h:Landroidx/appcompat/view/menu/go0$b;

.field public static i:Landroidx/appcompat/view/menu/go0$b;

.field public static j:Landroidx/appcompat/view/menu/go0$b;

.field public static k:Landroidx/appcompat/view/menu/go0$b;

.field public static l:Landroidx/appcompat/view/menu/go0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.content.BroadcastReceiver$PendingResult"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/t8$b;->a:Landroidx/appcompat/view/menu/go0;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const/4 v3, 0x6

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v1, v3

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->b:Landroidx/appcompat/view/menu/go0$a;

    const-string v1, "mAbortBroadcast"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mFinished"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->d:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mFlags"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->e:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mInitialStickyHint"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->f:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mOrderedHint"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->g:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mResultData"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->h:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mResultExtras"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->i:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mSendingUser"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->j:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t8$b;->k:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mType"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/t8$b;->l:Landroidx/appcompat/view/menu/go0$b;

    return-void
.end method
