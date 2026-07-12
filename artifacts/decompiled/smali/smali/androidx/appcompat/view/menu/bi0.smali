.class public abstract Landroidx/appcompat/view/menu/bi0;
.super Landroidx/appcompat/view/menu/av;
.source "SourceFile"


# instance fields
.field public final b0:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/av;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/bi0;->b0:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public f1(Landroidx/appcompat/view/menu/lg0;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bi0;->b0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g1()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bi0;->b0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method
