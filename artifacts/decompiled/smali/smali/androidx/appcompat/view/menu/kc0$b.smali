.class public final Landroidx/appcompat/view/menu/kc0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/kc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/lj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/kc0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/appcompat/view/menu/kc0;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/appcompat/view/menu/jc0;->a:Landroidx/appcompat/view/menu/jc0$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/jc0$b;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/jc0;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/kc0$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/kc0$a;-><init>(Landroidx/appcompat/view/menu/jc0;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
