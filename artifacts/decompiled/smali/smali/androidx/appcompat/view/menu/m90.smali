.class public abstract Landroidx/appcompat/view/menu/m90;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/m90$a;,
        Landroidx/appcompat/view/menu/m90$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;

.field public static e:Landroidx/appcompat/view/menu/go0$b;

.field public static f:Landroidx/appcompat/view/menu/go0$b;

.field public static g:Landroidx/appcompat/view/menu/go0$b;

.field public static h:Landroidx/appcompat/view/menu/go0$d;

.field public static i:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.LoadedApk"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/m90;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "mClassLoader"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/m90;->b:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mDataDirFile"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/m90;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mDeviceProtectedDataDirFile"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/m90;->d:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mCredentialProtectedDataDirFile"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/m90;->e:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mApplicationInfo"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/m90;->f:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mSecurityViolation"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/m90;->g:Landroidx/appcompat/view/menu/go0$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getClassLoader"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/m90;->h:Landroidx/appcompat/view/menu/go0$d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-class v3, Landroid/app/Instrumentation;

    aput-object v3, v2, v1

    const-string v1, "makeApplication"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/m90;->i:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
