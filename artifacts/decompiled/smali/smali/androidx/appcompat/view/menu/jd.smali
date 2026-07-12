.class public abstract Landroidx/appcompat/view/menu/jd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.graphics.Compatibility"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/jd;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "setTargetSdkVersion"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/jd;->b:Landroidx/appcompat/view/menu/go0$e;

    return-void
.end method
