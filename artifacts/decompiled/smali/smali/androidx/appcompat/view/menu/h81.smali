.class public final Landroidx/appcompat/view/menu/h81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g81;


# instance fields
.field public final b:Landroidx/appcompat/view/menu/g81;

.field public final c:Landroidx/appcompat/view/menu/n9;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/g81;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/n9;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/n9;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/h81;-><init>(Landroidx/appcompat/view/menu/g81;Landroidx/appcompat/view/menu/n9;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/g81;Landroidx/appcompat/view/menu/n9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/h81;->b:Landroidx/appcompat/view/menu/g81;

    iput-object p2, p0, Landroidx/appcompat/view/menu/h81;->c:Landroidx/appcompat/view/menu/n9;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroidx/appcompat/view/menu/ss;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h81;->b:Landroidx/appcompat/view/menu/g81;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/g81;->a(Landroid/app/Activity;)Landroidx/appcompat/view/menu/ss;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/pf;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h81;->c:Landroidx/appcompat/view/menu/n9;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h81;->b:Landroidx/appcompat/view/menu/g81;

    invoke-interface {v1, p1}, Landroidx/appcompat/view/menu/g81;->a(Landroid/app/Activity;)Landroidx/appcompat/view/menu/ss;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Landroidx/appcompat/view/menu/n9;->a(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/pf;Landroidx/appcompat/view/menu/ss;)V

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/pf;)V
    .locals 1

    const-string v0, "consumer"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h81;->c:Landroidx/appcompat/view/menu/n9;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/n9;->b(Landroidx/appcompat/view/menu/pf;)V

    return-void
.end method
