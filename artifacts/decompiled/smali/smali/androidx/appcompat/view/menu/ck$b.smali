.class public final Landroidx/appcompat/view/menu/ck$b;
.super Landroidx/appcompat/view/menu/ck$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Z

.field public c:Z

.field public d:Landroidx/appcompat/view/menu/cv$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gw0$d;Z)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/ck$f;-><init>(Landroidx/appcompat/view/menu/gw0$d;)V

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/ck$b;->b:Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/appcompat/view/menu/cv$a;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ck$b;->c:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$b;->d:Landroidx/appcompat/view/menu/cv$a;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ck$b;->b:Z

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/cv;->b(Landroid/content/Context;Landroidx/appcompat/view/menu/av;ZZ)Landroidx/appcompat/view/menu/cv$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$b;->d:Landroidx/appcompat/view/menu/cv$a;

    iput-boolean v3, p0, Landroidx/appcompat/view/menu/ck$b;->c:Z

    :goto_1
    return-object p1
.end method
