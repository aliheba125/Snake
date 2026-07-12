.class public Landroidx/appcompat/view/menu/zj0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/zj0$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/kd0;

.field public final b:Landroid/content/pm/PackageManager;

.field public c:Landroidx/appcompat/view/menu/zj0$b;

.field public final d:Landroidx/appcompat/view/menu/kd0$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/si;Landroid/content/pm/PackageManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/zj0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/zj0$a;-><init>(Landroidx/appcompat/view/menu/zj0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/zj0;->d:Landroidx/appcompat/view/menu/kd0$c;

    iput-object p2, p0, Landroidx/appcompat/view/menu/zj0;->b:Landroid/content/pm/PackageManager;

    new-instance p2, Landroidx/appcompat/view/menu/kd0;

    const-string v1, "flutter/processtext"

    sget-object v2, Landroidx/appcompat/view/menu/qw0;->b:Landroidx/appcompat/view/menu/qw0;

    invoke-direct {p2, p1, v1, v2}, Landroidx/appcompat/view/menu/kd0;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/ld0;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/zj0;->a:Landroidx/appcompat/view/menu/kd0;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/kd0;->e(Landroidx/appcompat/view/menu/kd0$c;)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/zj0;)Landroidx/appcompat/view/menu/zj0$b;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/zj0;->c:Landroidx/appcompat/view/menu/zj0$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/zj0$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/zj0;->c:Landroidx/appcompat/view/menu/zj0$b;

    return-void
.end method
