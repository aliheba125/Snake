.class public final Landroidx/appcompat/view/menu/k81$a$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/k81$a;->k(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/k81;

.field public final synthetic o:Landroidx/appcompat/view/menu/pf;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/k81;Landroidx/appcompat/view/menu/pf;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/k81$a$a;->n:Landroidx/appcompat/view/menu/k81;

    iput-object p2, p0, Landroidx/appcompat/view/menu/k81$a$a;->o:Landroidx/appcompat/view/menu/pf;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/k81$a$a;->n:Landroidx/appcompat/view/menu/k81;

    invoke-static {v0}, Landroidx/appcompat/view/menu/k81;->b(Landroidx/appcompat/view/menu/k81;)Landroidx/appcompat/view/menu/b81;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/k81$a$a;->o:Landroidx/appcompat/view/menu/pf;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/b81;->b(Landroidx/appcompat/view/menu/pf;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k81$a$a;->a()V

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object v0
.end method
