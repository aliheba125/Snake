.class public final Landroidx/appcompat/view/menu/lh$b;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/lh;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh;Z)Landroidx/appcompat/view/menu/kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/bo0;

.field public final synthetic o:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bo0;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lh$b;->n:Landroidx/appcompat/view/menu/bo0;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/lh$b;->o:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/kh;
    .locals 0

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/kh;->o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/kh;

    check-cast p2, Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/lh$b;->a(Landroidx/appcompat/view/menu/kh;Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method
