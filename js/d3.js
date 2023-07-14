
const svg = d3.select("svg");

d3.json('./data/data.json').then(data => {

    const y = d3.scaleLinear()
        .domain([0, 100])
        .range([0, 450]);

    const x = d3.scaleBand()
        .domain(data.map(item => item.day))
        .range([0, 450])
        .padding(0.1); // 余白を追加

    // join the data to circles
    const circles = svg.selectAll("circle")
        .data(data);

    // add attrs to existing circles
    circles.attr("cy", d => y(d.scale)) // 修正: d.scale を y(d.scale) に修正
        .attr("cx", d => x(d.day)  + x.bandwidth() / 2) // 修正: d.date を x(d.date) に修正
        .attr('r', 10)
        .attr("fill", d => d.color);

    // append the enter selection to DOM
    circles.enter()
        .append('circle')
        .attr("cy", d => y(d.scale))
        .attr("cx", d => x(d.day))
        .attr('r', 10)
        .attr("fill", d => d.color);

});





