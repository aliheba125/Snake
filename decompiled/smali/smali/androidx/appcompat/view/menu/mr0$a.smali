.class public final Landroidx/appcompat/view/menu/mr0$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/mr0;-><init>(Landroidx/appcompat/view/menu/pr0;Landroidx/appcompat/view/menu/b61;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/b61;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/b61;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mr0$a;->n:Landroidx/appcompat/view/menu/b61;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/nr0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mr0$a;->n:Landroidx/appcompat/view/menu/b61;

    invoke-static {v0}, Landroidx/lifecycle/p;->b(Landroidx/appcompat/view/menu/b61;)Landroidx/appcompat/view/menu/nr0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mr0$a;->a()Landroidx/appcompat/view/menu/nr0;

    move-result-object v0

    return-object v0
.end method
