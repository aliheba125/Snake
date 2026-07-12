.class public final Landroidx/appcompat/view/menu/rf2;
.super Landroidx/appcompat/view/menu/gg1;
.source "SourceFile"


# instance fields
.field public final o:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/gg1;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/rf2;->o:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 0

    :try_start_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/rf2;->o:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/y02;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/qg1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    return-object p1
.end method
