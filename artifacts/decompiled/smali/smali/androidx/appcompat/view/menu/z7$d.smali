.class public Landroidx/appcompat/view/menu/z7$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/z7$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/z7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/z7;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/z7;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7$d;->a:Landroidx/appcompat/view/menu/z7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/ef;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7$d;->a:Landroidx/appcompat/view/menu/z7;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/z7;->C()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/z7;->k(Landroidx/appcompat/view/menu/mz;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/z7$d;->a:Landroidx/appcompat/view/menu/z7;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z7;->V(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7$d;->a:Landroidx/appcompat/view/menu/z7;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z7;->V(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/z7$b;->j(Landroidx/appcompat/view/menu/ef;)V

    :cond_1
    return-void
.end method
