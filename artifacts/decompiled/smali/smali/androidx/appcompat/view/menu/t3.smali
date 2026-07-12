.class public Landroidx/appcompat/view/menu/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/t3;->a:Landroidx/appcompat/view/menu/mn1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t3;->a:Landroidx/appcompat/view/menu/mn1;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/mn1;->x(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t3;->a:Landroidx/appcompat/view/menu/mn1;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/appcompat/view/menu/mn1;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method
