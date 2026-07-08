.class public abstract Landroidx/appcompat/view/menu/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$e;

.field public static e:Landroidx/appcompat/view/menu/go0$e;

.field public static f:Landroidx/appcompat/view/menu/go0$d;

.field public static g:Landroidx/appcompat/view/menu/go0$d;

.field public static h:Landroidx/appcompat/view/menu/go0$a;

.field public static i:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.app.servertransaction.ClientTransaction"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/bc;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "mActivityCallbacks"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/bc;->b:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mActivityToken"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/bc;->c:Landroidx/appcompat/view/menu/go0$b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "android.app.IApplicationThread"

    invoke-static {v2}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-class v3, Landroid/os/IBinder;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const-string v3, "obtain"

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/bc;->d:Landroidx/appcompat/view/menu/go0$e;

    new-array v1, v5, [Ljava/lang/Class;

    invoke-static {v2}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/bc;->e:Landroidx/appcompat/view/menu/go0$e;

    new-array v1, v5, [Ljava/lang/Class;

    const-string v3, "android.app.servertransaction.ClientTransactionItem"

    invoke-static {v3}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v6, "addCallback"

    invoke-virtual {v0, v6, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/bc;->f:Landroidx/appcompat/view/menu/go0$d;

    new-array v1, v5, [Ljava/lang/Class;

    const-string v6, "android.app.servertransaction.ActivityLifecycleItem"

    invoke-static {v6}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v4

    const-string v6, "setLifecycleStateRequest"

    invoke-virtual {v0, v6, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/bc;->g:Landroidx/appcompat/view/menu/go0$d;

    new-array v1, v5, [Ljava/lang/Class;

    invoke-static {v2}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/bc;->h:Landroidx/appcompat/view/menu/go0$a;

    new-array v1, v5, [Ljava/lang/Class;

    invoke-static {v3}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "addTransactionItem"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/bc;->i:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
