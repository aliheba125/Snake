.class public Landroidx/appcompat/view/menu/jp0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/jp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/jp0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/jp0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/jp0$b;->a:Landroidx/appcompat/view/menu/jp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 2

    iget-object v0, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroidx/appcompat/view/menu/kd0$d;->a()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/jp0$b;->a:Landroidx/appcompat/view/menu/jp0;

    check-cast p1, [B

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/jp0;->b(Landroidx/appcompat/view/menu/jp0;[B)[B

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/jp0$b;->a:Landroidx/appcompat/view/menu/jp0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jp0;->c(Landroidx/appcompat/view/menu/jp0;Z)Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/jp0$b;->a:Landroidx/appcompat/view/menu/jp0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jp0;->d(Landroidx/appcompat/view/menu/jp0;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/view/menu/jp0$b;->a:Landroidx/appcompat/view/menu/jp0;

    iget-boolean v0, p1, Landroidx/appcompat/view/menu/jp0;->a:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jp0;->f(Landroidx/appcompat/view/menu/jp0;Landroidx/appcompat/view/menu/kd0$d;)Landroidx/appcompat/view/menu/kd0$d;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/jp0$b;->a:Landroidx/appcompat/view/menu/jp0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jp0;->a(Landroidx/appcompat/view/menu/jp0;)[B

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jp0;->e(Landroidx/appcompat/view/menu/jp0;[B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
