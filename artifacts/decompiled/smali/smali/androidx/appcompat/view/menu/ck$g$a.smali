.class public final Landroidx/appcompat/view/menu/ck$g$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ck$g;->d(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/ck$g;

.field public final synthetic o:Landroid/view/ViewGroup;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$g$a;->n:Landroidx/appcompat/view/menu/ck$g;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ck$g$a;->o:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ck$g$a;->p:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g$a;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$g;->v()Landroidx/appcompat/view/menu/aw;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g$a;->o:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ck$g$a;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/aw;->e(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g$a;->a()V

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object v0
.end method
