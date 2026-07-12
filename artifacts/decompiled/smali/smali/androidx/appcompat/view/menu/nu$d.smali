.class public Landroidx/appcompat/view/menu/nu$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/pf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/nu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/nu;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/nu;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu$d;->a:Landroidx/appcompat/view/menu/nu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/y91;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu$d;->a:Landroidx/appcompat/view/menu/nu;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nu;->setWindowInfoListenerDisplayFeatures(Landroidx/appcompat/view/menu/y91;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/y91;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/nu$d;->a(Landroidx/appcompat/view/menu/y91;)V

    return-void
.end method
