.class public abstract Landroidx/appcompat/view/menu/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/t1$a;,
        Landroidx/appcompat/view/menu/t1$e;,
        Landroidx/appcompat/view/menu/t1$b;,
        Landroidx/appcompat/view/menu/t1$d;,
        Landroidx/appcompat/view/menu/t1$c;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;

.field public static e:Landroidx/appcompat/view/menu/go0$b;

.field public static f:Landroidx/appcompat/view/menu/go0$b;

.field public static g:Landroidx/appcompat/view/menu/go0$b;

.field public static h:Landroidx/appcompat/view/menu/go0$b;

.field public static i:Landroidx/appcompat/view/menu/go0$b;

.field public static j:Landroidx/appcompat/view/menu/go0$b;

.field public static k:Landroidx/appcompat/view/menu/go0$e;

.field public static l:Landroidx/appcompat/view/menu/go0$d;

.field public static m:Landroidx/appcompat/view/menu/go0$d;

.field public static n:Landroidx/appcompat/view/menu/go0$d;

.field public static o:Landroidx/appcompat/view/menu/go0$d;

.field public static p:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/t1;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.app.servertransaction.ClientTransaction"

    invoke-static {v3}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "scheduleTransaction"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->b:Landroidx/appcompat/view/menu/go0$d;

    const-string v2, "sPackageManager"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "sPermissionManager"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->d:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "mActivities"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->e:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "mBoundApplication"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->f:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "mH"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->g:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "mInitialApplication"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->h:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "mInstrumentation"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->i:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "mProviderMap"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->j:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "currentActivityThread"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->k:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "getApplicationThread"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->l:Landroidx/appcompat/view/menu/go0$d;

    const-string v2, "getSystemContext"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->m:Landroidx/appcompat/view/menu/go0$d;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v4

    const-string v5, "getLaunchingActivity"

    invoke-virtual {v0, v5, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/t1;->n:Landroidx/appcompat/view/menu/go0$d;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v3, v5, v4

    const-class v3, Ljava/util/List;

    aput-object v3, v5, v1

    const-string v3, "performNewIntents"

    invoke-virtual {v0, v3, v5}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/view/menu/t1;->o:Landroidx/appcompat/view/menu/go0$d;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const-string v4, "android.app.ContentProviderHolder"

    invoke-static {v4}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    const-class v1, Landroid/content/pm/ProviderInfo;

    aput-object v1, v3, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const-string v1, "installProvider"

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/t1;->p:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
