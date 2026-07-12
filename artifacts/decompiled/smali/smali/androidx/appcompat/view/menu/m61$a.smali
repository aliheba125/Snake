.class public Landroidx/appcompat/view/menu/m61$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ag0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/m61;->b(Landroid/view/View;Landroidx/appcompat/view/menu/m61$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/m61$c;

.field public final synthetic b:Landroidx/appcompat/view/menu/m61$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m61$c;Landroidx/appcompat/view/menu/m61$d;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/m61$a;->a:Landroidx/appcompat/view/menu/m61$c;

    iput-object p2, p0, Landroidx/appcompat/view/menu/m61$a;->b:Landroidx/appcompat/view/menu/m61$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/appcompat/view/menu/y81;)Landroidx/appcompat/view/menu/y81;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m61$a;->a:Landroidx/appcompat/view/menu/m61$c;

    new-instance v1, Landroidx/appcompat/view/menu/m61$d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/m61$a;->b:Landroidx/appcompat/view/menu/m61$d;

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/m61$d;-><init>(Landroidx/appcompat/view/menu/m61$d;)V

    invoke-interface {v0, p1, p2, v1}, Landroidx/appcompat/view/menu/m61$c;->a(Landroid/view/View;Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/m61$d;)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    return-object p1
.end method
