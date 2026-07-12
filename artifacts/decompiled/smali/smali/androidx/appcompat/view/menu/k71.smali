.class public abstract Landroidx/appcompat/view/menu/k71;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.android.internal.net.VpnConfig"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/k71;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/k71;->b:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "disallowedApplications"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/k71;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "allowedApplications"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/k71;->d:Landroidx/appcompat/view/menu/go0$b;

    return-void
.end method
