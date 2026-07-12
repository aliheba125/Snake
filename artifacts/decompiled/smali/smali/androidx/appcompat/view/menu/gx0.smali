.class public abstract Landroidx/appcompat/view/menu/gx0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;

.field public static e:Landroidx/appcompat/view/menu/go0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.os.StrictMode"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/gx0;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "DETECT_VM_FILE_URI_EXPOSURE"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/gx0;->b:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "PENALTY_DEATH_ON_FILE_URI_EXPOSURE"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/gx0;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "sVmPolicyMask"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/gx0;->d:Landroidx/appcompat/view/menu/go0$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "disableDeathOnFileUriExposure"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/gx0;->e:Landroidx/appcompat/view/menu/go0$e;

    return-void
.end method
