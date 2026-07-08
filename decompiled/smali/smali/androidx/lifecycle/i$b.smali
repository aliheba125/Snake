.class public final Landroidx/lifecycle/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/f$b;

.field public b:Landroidx/lifecycle/h;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/z80;Landroidx/lifecycle/f$b;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/b90;->f(Ljava/lang/Object;)Landroidx/lifecycle/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/i$b;->b:Landroidx/lifecycle/h;

    iput-object p2, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/f$b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/f$a;->e()Landroidx/lifecycle/f$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/i;->k:Landroidx/lifecycle/i$a;

    iget-object v2, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/f$b;

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/i$a;->a(Landroidx/lifecycle/f$b;Landroidx/lifecycle/f$b;)Landroidx/lifecycle/f$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/f$b;

    iget-object v1, p0, Landroidx/lifecycle/i$b;->b:Landroidx/lifecycle/h;

    invoke-static {p1}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/h;->c(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V

    iput-object v0, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/f$b;

    return-void
.end method

.method public final b()Landroidx/lifecycle/f$b;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/f$b;

    return-object v0
.end method
