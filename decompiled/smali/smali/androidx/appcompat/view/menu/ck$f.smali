.class public abstract Landroidx/appcompat/view/menu/ck$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/gw0$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gw0$d;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$f;->a:Landroidx/appcompat/view/menu/gw0$d;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/gw0$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$f;->a:Landroidx/appcompat/view/menu/gw0$d;

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$f;->a:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$b;->m:Landroidx/appcompat/view/menu/gw0$d$b$a;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/gw0$d$b$a;->a(Landroid/view/View;)Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$f;->a:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v2, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method
